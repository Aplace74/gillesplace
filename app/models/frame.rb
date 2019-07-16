class Frame < ApplicationRecord
  has_many :available_frames, dependent: :destroy
end
