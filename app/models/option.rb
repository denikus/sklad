class Option < ActiveRecord::Base
  validates :name, :url, presence: true

end
