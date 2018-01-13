class Video < ApplicationRecord
  has_many :videotags
  has_many :tags, through: :videotags
end
