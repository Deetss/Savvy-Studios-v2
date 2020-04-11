class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save!
      SendContactNotificationJob.perform_later @contact
      flash[:success] = "Thanks for getting in touch!"
      redirect_to action: "index"
    else
      flash[:alert] = "Something went wrong! Please try again."
      redirect_to contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :body)
  end
end
