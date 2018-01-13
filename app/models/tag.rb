class Tag < ApplicationRecord
  has_many :videotags
  has_many :videos, through: :videotags
end
