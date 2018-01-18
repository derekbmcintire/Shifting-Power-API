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

  def rated
    if object.users.include?(scope)
      true
    end
  end



  #
  # def rated
  #   if object.users.videos.include?(:id)
  #     true
  #   else
  #     false
  #   end
  # end

end
