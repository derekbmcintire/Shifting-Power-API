class Video < ApplicationRecord
  has_many :videotags
  has_many :tags, through: :videotags
  has_many :reviews
end
