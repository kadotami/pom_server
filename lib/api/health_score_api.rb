class HealthScore_API < Grape::API
  resource "health_scores" do
    helpers do
      def health_score_params
        ActionController::Parameters.new(params).permit(:project_id, :github_score, :slack_score, :photo_score)
        #ここでstrong_parametersの設定
      end
    end

    get do
      HealthScore.all
    end

    desc "create a health scores"
    params do
      requires :project_name, type: String
      requires :github_score, type: Float
      requires :slack_score, type: Float
      requires :photo_score, type:Float
    end
    # http://localhost:3000/api/projects
    post do
      project = Projects.new(project_params)
      project.save
    end
  end
end