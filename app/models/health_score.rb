class HealthScore < ActiveRecord::Base
  belongs_to :github_score
  belongs_to :slack_score
  belongs_to :photo_score
end
