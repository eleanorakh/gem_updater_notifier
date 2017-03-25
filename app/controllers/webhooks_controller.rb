class WebhooksController < ApplicationController
  protect_from_forgery if: -> { false }

  def rubygems
    name = params.permit(:name)[:name]
    recipients = Recipient.where(gem: name)
    recipients.each do |recipient|
      RecipientMailer.update_notification(recipient).deliver_now
    end
    head :ok
  end
end
