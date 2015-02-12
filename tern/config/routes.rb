Rails.application.routes.draw do
  
  resources "contacts", only: [:new, :create]

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
