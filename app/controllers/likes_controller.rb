class LikesController < ApplicationController

  def create
    like_params = {}
    like_params[:thought_id] = params[:thought_id]
    like_params[:user_id] = @current_user.id
    # existing_like = Like.find_by(thought_id: params[:thought_id], user_id: params[:user_id])
    @like = Like.create(like_params)
    if @like.valid?
      redirect_to thought_path(params[:thought_id])
    else
      flash[:errors] = @like.errors.full_messages
      redirect_back(fallback_location: users_path)
    end
  end
  
  def destroy
    # byebug
    byebug
    @like = Like.find_by(params[:like_id])
    if @like
      @like.destroy
      redirect_to thought_path(params[:thought_id])
    #can insert an else condition, set conditions in like model, set a flash error, pass error to user if destroy like didn't work?
    end
  end

end

