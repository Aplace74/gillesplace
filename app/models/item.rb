class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  belongs_to :photo_size
  belongs_to :frame
end
