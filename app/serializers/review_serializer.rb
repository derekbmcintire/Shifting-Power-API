class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating
  has_one :video
  has_one :user
end
