class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save!
      SendContactNotificationJob.perform_later @contact
      redirect_to action: "index"
    else
      redirect_to galleries_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :body)
  end
end
