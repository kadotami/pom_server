class CreateHealthScores < ActiveRecord::Migration
  def change
    create_table :health_scores do |t|
      t.float :github_score
      t.float :slack_score
      t.float :photo_score
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
