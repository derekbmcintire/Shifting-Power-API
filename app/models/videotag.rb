class Videotag < ApplicationRecord
  belongs_to :video
  belongs_to :tag
end
