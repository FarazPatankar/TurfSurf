class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox, :conversation

  private
  def mailbox
  	@mailbox ||= current_user.mailbox
  end

  def conversation
  	@conversation ||= mailbox.conversations.find(params[:id])
  end

  protected
  def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up).push :first_name, :last_name, :username, :number, :bio, :image
	  devise_parameter_sanitizer.for(:account_update).push :first_name, :last_name, :number, :bio, :image
  end
end
