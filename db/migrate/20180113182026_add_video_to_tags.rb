class AddVideoToTags < ActiveRecord::Migration[5.1]
  def change
    add_reference :tags, :video, foreign_key: true
  end
end
