class Product < ActiveRecord::Base
  validates_uniqueness_of :identifier
end
