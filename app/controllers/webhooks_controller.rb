class WebhooksController < ApplicationController
  protect_from_forgery if: -> { false }

  def rubygems
    head :ok
  end
end
