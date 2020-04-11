class SendContactNotificationJob < ApplicationJob
  queue_as :default

  def perform(contact)
    ContactMailer.contact_email(contact).deliver_now
  end
end
