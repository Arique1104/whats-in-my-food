Rails.application.routes.draw do
  root "welcome#index"
  # get '/', to: 'welcome#index'
  get '/foods', to: 'foods#index'
end
