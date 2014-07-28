class UsersController < ApplicationController
  before_action :set_user

  def show
  end
  
  def learning_slim
    
  end

  private

    def set_user
      if params[:id]
        @user = User.find(params[:id])
      end
    end
end
