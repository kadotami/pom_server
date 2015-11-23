class HealthScore_API < Grape::API
  resource "health_scores" do
    get ':id' , requirements: { id: /[0-9]*/ } do
      GithubScore.where()
    end
  end

  resource "github_score" do
    helpers do
      def github_score_params
        ActionController::Parameters.new(params).permit(:project_id, :value, :date)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :github_score, type: Float
      requires :date, type: Date
    end
    # http://localhost:3000/api/health_scores
    post do
      github_score = GithubScores.new(github_score_params)
      github_score.save
    end
  end

  resource "slack_score" do
    helpers do
      def slack_score_params
        ActionController::Parameters.new(params).permit(:project_id, :value, :date)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :github_score, type: Float
      requires :date, type: Date
    end
    # http://localhost:3000/api/health_scores
    post do
      slack_score = SlackScores.new(slack_score_params)
      slack_score.save
    end
  end

  resource "photo_score" do
    helpers do
      def photo_score_params
        ActionController::Parameters.new(params).permit(:project_id, :value, :date)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :photo_score, type: Float
      requires :date, type: Date
    end
    # http://localhost:3000/api/health_scores
    post do
      photo_score = PhotoScores.new(photo_score_params)
      photo_score.save
    end
  end
end