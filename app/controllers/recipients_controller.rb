class RecipientsController < ApplicationController
  def new
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.new(recipient_params)
    if @recipient.save
      render 'create'
    else
      render 'new'
    end
  end

  private

  def recipient_params
    params.require(:recipient).permit(:email, :gem)
  end
end
