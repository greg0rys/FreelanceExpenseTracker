class Webhooks::StripeController < ApplicationController
  skip_before_action :verify_authenticity_token

  # create the new webhook event to process
  def create
    event = Stripe::Webhook.construct_event()
    # process job here 

    head :ok 

  rescue JSON::ParserError, Stripe::SignatureVerificationError
    return head :bad_request
  end

end
