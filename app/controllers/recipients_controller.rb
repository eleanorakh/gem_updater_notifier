require 'securerandom'

class RecipientsController < ApplicationController
  def new
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.new(recipient_params)
    if @recipient.save
      RecipientMailer.welcome_email(@recipient).deliver_now
      render 'create'
    else
      render 'new'
    end
  end

  private

  def recipient_params
    params.require(:recipient).permit(:email, :gem).merge(token: SecureRandom.hex(16))
  end
end
