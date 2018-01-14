class RateSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :user
  has_one :video
end
