class Contact < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :name, presence: true

end
