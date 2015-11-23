class CreateHealthScores < ActiveRecord::Migration
  def change
    create_table :health_scores do |t|
      t.integer :github_score_id
      t.integer :slack_score_id
      t.integer :photo_score_id
      t.integer :project_id
      t.date :date

      t.timestamps null: false
    end
  end
end
