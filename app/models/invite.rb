class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :name, :email, presence: true

  def send_text_message(number, body)

    twilio_phone_number = "305-615-2846"

    @twilio_client = Twilio::REST::Client.new ENV['twilio_sid'], ENV['twilio_token']

    @twilio_client.account.sms.messages.create(
    :from => "+1#{twilio_phone_number}",
    :to => number,
    :body => body
    )
 end
end
