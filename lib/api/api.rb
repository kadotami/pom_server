class API < Grape::API
  prefix "api"
  format :json

  mount Project_API
  mount HealthScore_API
end