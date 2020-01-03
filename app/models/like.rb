class Like < ApplicationRecord
  belongs_to :user
  belongs_to :thought

  # def initialize(params = {})
  #   existing_like = self.class.find_by(thought_id: params[:thought_id], user_id: params[:user_id])
  #   if existing_like
  #     params = []
  #   end
  #   self.thought_id = params[:thought_id]
  #   self.user_id = params[:user_id]
  # end

end

