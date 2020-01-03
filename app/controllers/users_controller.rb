class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_params, only: [:create, :update]
  skip_before_action :authorized, only: [:index, :show, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # byebug
    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.create(@params)
    end
    if @user
      if @user.valid?
        session[:user_id] = @user.id
        redirect_to thoughts_path
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
    else
      flash[:errors] = ["Your passwords must match."]
      redirect_to new_user_path
    end
  end

  def update
    @user.update(@params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    # add some verification layer / if statement here ?
    @user.destroy
    redirect_to users_path
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def set_params
      @params = params.require(:user).permit(:name, :password)
    end

end

