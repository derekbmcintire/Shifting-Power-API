class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :tags

  def tags
    object.tags.pluck(:id)
  end
end
