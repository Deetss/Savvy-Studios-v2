class Contact < ApplicationRecord
    
    validates_format_of :email,:with => /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
    validates :name, presence: true
    validates :email, presence: true

end
