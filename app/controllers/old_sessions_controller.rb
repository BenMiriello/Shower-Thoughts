class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def login
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to '/welcome'
    else
      # flash[:errors] = @user.errors.full_messages
      redirect_to '/login'
    end
  end

  def welcome
  end

  def page_requires_login
  end
end

