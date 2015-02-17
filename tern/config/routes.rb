Rails.application.routes.draw do
  
  resources "posts", only: [:index, :show]

  root 'static_pages#index'
  
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end
  
  resources "contacts", only: [:new, :create]

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
