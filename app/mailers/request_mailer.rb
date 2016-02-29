class RequestMailer < ApplicationMailer
  default from: "requests@turfsurf.co"

  def request_email(request)
  	@request = request
  	mail(to: @request.email, subject: "Hello")
  end
end
