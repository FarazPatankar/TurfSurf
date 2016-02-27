class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :name, :email, presence: true

  def send_text_message(number, body)

  twilio_sid = "AC6117ff1af2a5aea782b724a616f5968c"
  twilio_token = "0dafdc1646066edd73c30c1b38bccd49"
  twilio_phone_number = "305-615-2846"

  @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

  @twilio_client.account.sms.messages.create(
  :from => "+1#{twilio_phone_number}",
  :to => number,
  :body => body
  )
 end
end
