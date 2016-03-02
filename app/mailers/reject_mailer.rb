class RejectMailer < ApplicationMailer
  default from: "sorry@turfsurf.co"

  def reject_email(reject)
  	@reject = reject
  	mail(to: @reject.email, subject: "Hello")
  end
end
