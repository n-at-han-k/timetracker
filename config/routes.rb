Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check
  resources "activities" do 
    member do 
      get "select_time" , to: "activities#select_time" , as:"select_time"
      post "log_time" , to: "activities#log_time" , as:"log_time"
    end 
  end 
  get "log" ,  to: "log#index" , as:"log"
  
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
