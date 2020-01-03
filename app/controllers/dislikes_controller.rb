class DislikesController < ApplicationController

  def create
    dislike_params = {}
    dislike_params[:thought_id] = params[:thought_id]
    dislike_params[:user_id] = @current_user.id
    @dislike = Dislike.create(dislike_params)
    if @dislike.valid?
      redirect_to thought_path(params[:thought_id])
    else
      flash[:errors] = @dislike.errors.full_messages
      redirect_back(fallback_location: users_path)
    end
  end

  def destroy
    # byebug
    @dislike = Dislike.find_by(params[:id])
    if @dislike
      @dislike.destroy
      redirect_to thought_path(params[:thought_id])
    #can insert an else condition, set conditions in dislike model, set a flash error, pass error to user if destroy dislike didn't work?
    end
  end

end

