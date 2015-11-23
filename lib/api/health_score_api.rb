class HealthScore_API < Grape::API
  resource "health_scores" do
    get ':id' , requirements: { id: /[0-9]*/ } do
      health_scores = HealthScore.includes(:github_score, :slack_score, :photo_score).where(:project_id => params[:id])
      present health_scores, with: Entities::HealthScore
    end
  end

  resource "github_score" do
    helpers do
      def github_score_params
        ActionController::Parameters.new(params).permit(:date, :project_id, :value)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :value, type: Float
      requires :date, type: Date
    end
    # http://localhost:3000/api/health_scores
    post do
      health_score = HealthScore.where(:project_id => params[:project_id], :date => params[:date])
      if health_score.empty?
        health_score = HealthScore.new(:project_id => params[:project_id], :date => params[:date])
      else
        health_score = health_score[0]
      end
      p health_score
      github_score = GithubScore.new(:value => params[:value])
      github_score.save
      health_score.github_score_id = github_score.id
      health_score.save
    end
  end

  resource "slack_score" do
    helpers do
      def slack_score_params
        ActionController::Parameters.new(params).permit(:date, :project_id,:value)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :value, type: Float
      requires :date, type: Date
    end
    post do
      health_score = HealthScore.where(:project_id => params[:project_id], :date => params[:date])
      if health_score.empty?
        health_score = HealthScore.new(:project_id => params[:project_id], :date => params[:date])
      else
        health_score = health_score[0]
      end
      slack_score = SlackScore.new(:value => params[:value])
      slack_score.save
      health_score.slack_score_id = slack_score.id
      health_score.save
    end
  end

  resource "photo_score" do
    helpers do
      def photo_score_params
        ActionController::Parameters.new(params).permit(:date, :project_id,:value)
      end
    end

    params do
      requires :project_id, type: Integer
      requires :value, type: Float
      requires :date, type: Date
    end
    post do
      health_score = HealthScore.where(:project_id => params[:project_id], :date => params[:date])
      if health_score.empty?
        health_score = HealthScore.new(:project_id => params[:project_id], :date => params[:date])
      else
        health_score = health_score[0]
      end
      photo_score = PhotoScore.new(:value => params[:value])
      photo_score.save
      health_score.photo_score_id = photo_score.id
      health_score.save
    end
  end
end