class DropvideoTags < ActiveRecord::Migration[5.1]
  def change
    drop_table :video_tags
  end
end
