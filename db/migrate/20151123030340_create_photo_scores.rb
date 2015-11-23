class CreatePhotoScores < ActiveRecord::Migration
  def change
    create_table :photo_scores do |t|
      t.float :value
      t.integer :project_id
      t.date :date

      t.timestamps null: false
    end
  end
end
