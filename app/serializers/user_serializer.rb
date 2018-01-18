# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :videos

  def videos
    object.videos.pluck(:id)
  end
end
