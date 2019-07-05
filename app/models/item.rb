class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  belongs_to :photo_size
  belongs_to :frame

  validates :quantity, numericality: { greater_than_or_equal_to: 1 }
end
