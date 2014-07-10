class Category < ActiveRecord::Base
  has_ancestry
  validates_uniqueness_of :identifier
end
