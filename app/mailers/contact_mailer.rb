class ContactMailer < ApplicationMailer
    default from: "contact@savvystudios.com"

    def contact_email
        @email = params[:email]
        @name = params[:name]
        
        mail(to: @email, subject: 'New contact request from #{@name}')

    end
end
