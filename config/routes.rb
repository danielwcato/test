# inside config/routes.rb  
Rails.application.routes.draw do  
  root to: "home#index"
  
  resources :guests
  ## Unused Routes ##
  #get '/guests', to: "guests#index"
  #get "/guests/:id", to: "guests#list"
  #get "/home/index"  
    

end  