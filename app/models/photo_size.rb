class PhotoSize < ApplicationRecord
  has_many :available_sizes, dependent: :destroy
end
