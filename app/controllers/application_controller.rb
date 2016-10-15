class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
#   before_filter :require_login

private
  def authenticate_user!
    if !current_user
      redirect_to new_ticket_path
    end
  end
#
#   def require_login
#     if !current_user
#       redirect_to new_user_session_path
#     end
#   end

end
