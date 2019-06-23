class Product < ApplicationRecord
  belongs_to :category
  belongs_to :type
  has_many :available_size
  has_many :tagging
  monetize :price_cents
end
