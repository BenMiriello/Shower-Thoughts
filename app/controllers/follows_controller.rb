class FollowsController < ApplicationController

  def create
    follow_params = {}
    follow_params[:followee_id] = params[:followee_id]
    follow_params[:follower_id] = @current_user.id
    @follow = Follow.create(follow_params)
    if @follow.valid?
      redirect_to user_path(params[:followee_id])
    else
      flash[:errors] = @follow.errors.full_messages
      redirect_back(fallback_location: users_path)
    end
  end

  def destroy
    @follow = Follow.find_by(:follower_id == params[:follower_id] && :followee_id == @current_user.id)
    if @follow
      @follow.destroy
      redirect_to user_path(params[:followee_id])
    #can insert an else condition, set conditions in follow model, set a flash error, pass error to user if unfollow didn't work?
    end
  end

end

