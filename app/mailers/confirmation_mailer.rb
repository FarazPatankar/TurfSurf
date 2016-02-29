class ConfirmationMailer < ApplicationMailer
  default from: "confirmation@turfsurf.co"

  def confirmation_email(invite)
  	@invite = invite
  	mail(to: @invite.email, subject: "Hello, #{@invite.name}.")
  end
end
