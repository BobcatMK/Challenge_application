class UsersController < ApplicationController
  before_action :set_user
  
  def leaderboard
    @all_users = User.all
  end

  def show
    
  end

  private

    def set_user
      if params[:id]
        @user = User.find(params[:id])
      end
    end
end
