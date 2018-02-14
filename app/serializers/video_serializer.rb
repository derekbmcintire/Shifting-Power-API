class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :tags, :ratings, :rated

  def tags
    object.tags.pluck(:id)
  end

  def ratings
    object.userratings.pluck(:id)
  end

  def users
    object.users.pluck(:id)
  end

  # returns if the current user has rated the video
  def rated
    if object.users.include?(scope)
      true
    end
  end
end
