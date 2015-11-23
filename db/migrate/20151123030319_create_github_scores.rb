class CreateGithubScores < ActiveRecord::Migration
  def change
    create_table :github_scores do |t|
      t.float :value

      t.timestamps null: false
    end
  end
end
