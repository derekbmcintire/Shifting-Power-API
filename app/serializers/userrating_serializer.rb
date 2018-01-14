class UserratingSerializer < ActiveModel::Serializer
  attributes :id, :rating
  has_one :user
  has_one :video
end
