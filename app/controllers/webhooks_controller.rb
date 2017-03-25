class WebhooksController < ApplicationController
  protect_from_forgery if: -> { false }

  def rubygems
    name = params.permit(:name)[:name]
    recipients = Recipient.where(gem: name)
    recipients.each do |recipient|
      recipient.email
    end
    head :ok
  end
end
