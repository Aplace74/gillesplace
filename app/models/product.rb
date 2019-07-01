class Product < ApplicationRecord
  belongs_to :category
  belongs_to :type
  has_many :available_sizes
  has_many :taggings
  monetize :price_cents

  mount_uploader :photo, PhotoUploader
end
