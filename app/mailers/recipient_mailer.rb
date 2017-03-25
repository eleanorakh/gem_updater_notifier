class RecipientMailer < ApplicationMailer

default from: 'eleanorakh@gmail.com'

  def welcome_email(recipient)
    @recipient = recipient
    mail(to: @recipient.email, subject: "Thank you!")
  end
end
