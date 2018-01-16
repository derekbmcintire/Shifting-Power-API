class UserratingSerializer < ActiveModel::Serializer
  attributes :id, :rating, :user_id, :video_id
end
