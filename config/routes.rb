Rails.application.routes.draw do
  root :to => "graph#index"
  resources :unity, :only => [:index]
  mount API => "/"
end
