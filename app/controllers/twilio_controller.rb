require 'twilio-ruby'

class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_text_message
  number_to_send_to = "+13052057516"

  twilio_sid = "AC69f01bb31303a5f31c9d116e212752b6"
  twilio_token = "ed21cea4a2978abc3ce18532159eba3a"
  twilio_phone_number = "917-242-4703"

  @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

  @twilio_client.account.sms.messages.create(
  :from => "+1#{twilio_phone_number}",
  :to => number_to_send_to,
  :body => "TWILIOOOOOO"
  )
 end
 end