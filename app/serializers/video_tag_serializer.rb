class VideoTagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :tag
  has_one :video
end
