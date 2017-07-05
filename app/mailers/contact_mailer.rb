class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact

    mail to: 'gohdaniel15@gmail.com', subject: "New contact message from #{@contact.name}"
  end

end
