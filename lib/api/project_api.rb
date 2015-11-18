class Project_API < Grape::API
  resource "projects" do
    helpers do
      def project_params
        ActionController::Parameters.new(params).permit(:name)
      end
    end

    desc "create a project"
    params do
      requires :name, type: String
    end
    # http://localhost:3000/api/projects
    post do
      project = Project.new(project_params)
      project.save
    end
  end
end