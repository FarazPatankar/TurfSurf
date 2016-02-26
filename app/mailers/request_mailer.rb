class RequestMailer < ApplicationMailer

  default from: "farazpatankar@gmail.com"

  def request_email(request)
  	@request = request
  	mail(to: @request.email, subject: "Hello")
  end
end
