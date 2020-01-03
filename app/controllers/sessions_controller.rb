class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @errors = flash[:errors]
    # render :new
  end

  def create
    # find the user instance
    user = User.find_by(name: params[:session][:name])
    # use .authenicate to check their plaintext password against the encrypted password
    # byebug
    if user && user.authenticate(params[:session][:password])
      # save their id to session[:user_id]
      session[:user_id] = user.id
      # redirect somewhere
      redirect_to thoughts_path
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    # response
    redirect_to thoughts_path
  end

end

