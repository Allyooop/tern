ActiveAdmin.register Contact do


  # as with Rails controllers, white list actions
  permit_params :name, :email, :message
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :name
  filter :email
  filter :message

end
