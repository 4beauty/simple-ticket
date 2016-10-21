class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def notify_user(user)
    require 'mandrill'
    m = Mandrill::API.new ENV['MANDRILL_API']

    message = {
        :subject => "New Ticket",
        :from_name => "Simple Tcket",
        :text => "Your Department has just received a new ticket.",
        :to => [
            {
                :email => user.email
            }
        ],
        :from_email => "no-reply@4beauty.net"
    }
    m.messages.send message
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :department_id])
  end


private
  def authenticate_user!
    if !current_user
      redirect_to new_ticket_path
    end
  end

end
