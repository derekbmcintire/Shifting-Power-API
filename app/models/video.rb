class Video < ApplicationRecord
  has_many :videotags
  has_many :tags, through: :videotags
  has_many :userratings, :dependent => :destroy
  has_many :users, through: :userratings
  validates_presence_of :title, :url
end
