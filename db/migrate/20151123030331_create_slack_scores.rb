class CreateSlackScores < ActiveRecord::Migration
  def change
    create_table :slack_scores do |t|
      t.float :value

      t.timestamps null: false
    end
  end
end
