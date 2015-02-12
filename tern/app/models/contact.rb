class Contact < ActiveRecord::Base
  
  include MailForm::Delivery
  
  validates :name, :email, :message, presence: true
  
  append :remote_ip, :user_agent, :session
  
      attribute :name,      :validate => true
      attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
      attribute :message

      def headers
        {
          :subject => "My Contact Form",
          :to => "grillopress@gmail.com",
          :from => %("#{name}" <#{email}>)
        }
      end
    
end


