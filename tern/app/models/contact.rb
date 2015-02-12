class Contact < MailForm::Base
  # name:string 
  # email:string 
  # message:text 
  
  validates :name, :email, :message, presence: true
  
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
