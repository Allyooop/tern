ActiveAdmin.register Post do

  # as with Rails controllers, white list actions
  permit_params :title, :body, :author, :image
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :title
  filter :author
  
  # override default form
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs 'Post Details' do
    f.input :title
    f.input :author
    f.input :image, :as => :file
    f.input :body
   end
  
   f.actions
  end
  
end
