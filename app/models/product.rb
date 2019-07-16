class Product < ApplicationRecord
  belongs_to :category
  belongs_to :type
  has_many :available_sizes
  has_many :available_frames
  has_many :photos, dependent: :destroy

  monetize :price_cents
end
