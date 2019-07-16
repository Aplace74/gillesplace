class Paper < ApplicationRecord
  has_many :available_papers, dependent: :destroy
end