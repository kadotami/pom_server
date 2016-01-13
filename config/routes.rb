Rails.application.routes.draw do
  root :to => "graph#index"
  mount API => "/"
end
