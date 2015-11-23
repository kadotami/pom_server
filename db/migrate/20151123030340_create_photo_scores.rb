class CreatePhotoScores < ActiveRecord::Migration
  def change
    create_table :photo_scores do |t|
      t.float :value

      t.timestamps null: false
    end
  end
end
