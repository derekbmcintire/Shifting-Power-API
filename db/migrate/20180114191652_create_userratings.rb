class CreateUserratings < ActiveRecord::Migration[5.1]
  def change
    create_table :userratings do |t|
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
