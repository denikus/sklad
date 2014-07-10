class ImportController < ApplicationController
  require 'open-uri'

  def index
    doc = Nokogiri::XML(open("http://shop.football.kharkov.ua/yandex.xml"))

    parse_categories(doc)
    parse_products(doc)
  end

  private

  def parse_categories(doc)
    doc.xpath("//categories//category").each do |category|
      parent_category = Category.find_by_identifier(category['parentId'])
      category = Category.new({identifier: category['id'], parent_id: (parent_category ? parent_category.id : nil), name: category.text })
      category.save
    end
  end

  def parse_products(doc)
    doc.xpath("//offers/offer").each do |item|
      category = Category.find_by_identifier(item.at_xpath("categoryId").text)
      product = Product.new(identifier: item["id"], price: item.at_xpath("price").text.strip,
                  category_id: category.id, url: item.at_xpath("url").text.strip,
                  picture_url: item.at_xpath("picture").text.strip, name: item.at_xpath("name").text.strip)
      product.save
    end
  end
end
