class ApplicationController < ActionController::Base
  before_action :current_user
  before_action :authorized
  
  private 
  
  def authorized
    if @current_user
      # just continue with the request
    else
      redirect_to login_path
    end
  end
  
  def current_user
    @current_user = User.find_by(id: session[:user_id])
    # @current_user = User.last
  end
  
end

# alternate:

# helper_method :logged_in?

# def current_user
# end

# alternate:
# def authorized
#   redirect_to '/welcome' unless logged_in?
# end

# def logged_in?
#   !current_user.nil?
# end
