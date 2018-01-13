class VideotagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :video
  has_one :tag
end
