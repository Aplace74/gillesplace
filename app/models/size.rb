class Size < ApplicationRecord
  has_many :available_sizes, dependent: :destroy
  monetize :price_cents
end
