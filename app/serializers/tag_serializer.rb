class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :videos

  def videos
    object.videos.pluck(:id)
  end
end
