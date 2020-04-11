class ContactMailer < ApplicationMailer
    default from: '"Contact Request" <contact@savvystudios.com>'

    def contact_email(contact)
        @email = contact.email
        @name = contact.name
        @body = contact.body
        
        mail(to: 'sav_berman@yahoo.com', subject: "New contact request from #{@name}")
    end
end
