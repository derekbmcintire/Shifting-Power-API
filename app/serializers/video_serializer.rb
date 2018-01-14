class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :tags, :ratings

  def tags
    object.tags.pluck(:id)
  end
  def ratings
    object.userratings.pluck(:id)
  end
end
