class AvailableSize < ApplicationRecord
  belongs_to :product
  belongs_to :photo_size
end