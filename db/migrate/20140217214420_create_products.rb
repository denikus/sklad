class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :identifier
      t.references :category
      t.string :name
      t.text :url
      t.text :picture_url
      t.integer :price
      t.timestamps
    end
  end
end
