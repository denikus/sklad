class Option < ActiveRecord::Base
  validates :name, :url, presence: true
  has_many :option_values

end
