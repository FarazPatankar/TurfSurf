class ResponseMailer < ApplicationMailer
  default from: "response@turfsurf.co"

  def response_email(invite)
  	@invite = invite
  	mail(to: @invite.user.email, subject: "Hello, #{@invite.user.username}.")
  end
end
