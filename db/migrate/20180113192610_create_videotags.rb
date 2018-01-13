class CreateVideotags < ActiveRecord::Migration[5.1]
  def change
    create_table :videotags do |t|
      t.references :video, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
