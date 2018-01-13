class RemoveVideoFromTags < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tags, :video, foreign_key: true
  end
end
