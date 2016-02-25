class InviteMailer < ApplicationMailer
  default from: "farazpatankar@gmail.com"

  def invite_email(invite)
  	@invite = invite
  	mail(to: @invite.email, subject: "Hello, #{@invite.name}.")
  end
end
