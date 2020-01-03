class ThoughtsController < ApplicationController
  before_action :set_thought, only: [:show, :edit, :update, :destroy]
  before_action :set_params, only: [:create, :update]
  skip_before_action :authorized, only: [:index, :show]

  def index
    @thoughts = Thought.all
  end

  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.new(@params)
    @thought.user_id = @current_user.id
    @thought.save
    if @thought.valid?
      redirect_to thought_path(@thought)
    else
      flash[:errors] = @thought.errors.full_messages
      redirect_to new_thought_path
    end
  end

  def update
    @thought.update(@params)
    if @thought.valid?
      redirect_to thought_path(@thought)
    else
      flash[:errors] = @thought.errors.full_messages
      redirect_to edit_thought_path
    end
  end

  def destroy
    if @thought.user_id == @current_user.id
      @thought.destroy
      redirect_to user_path(@thought.user)
    else
      redirect_to thought_path(@thought)
      flash[:errors] = "You are not authorized to delete this thought."
    end
  end

  private

    def set_params
      @params = params.require(:thought).permit(:text, :user_id)
    end

    def set_thought
      @thought = Thought.find(params[:id])
    end

end

