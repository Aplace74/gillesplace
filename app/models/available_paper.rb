class AvailablePaper < ApplicationRecord
  belongs_to :product
  belongs_to :paper
end