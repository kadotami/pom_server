module Entities
  class GithubScore < Grape::Entity
    expose :id, :value
  end

  class SlackScore < Grape::Entity
    expose :id, :value
  end

  class PhotoScore < Grape::Entity
    expose :id, :value
  end

  class HealthScore < Grape::Entity
    expose :id, :date, :created_at
    expose :github_score, using: Entities::GithubScore
    expose :slack_score, using: Entities::SlackScore
    expose :photo_score, using: Entities::PhotoScore
  end

end