class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :dashboard
  def dashboard
    # @user = User.find(params[:user_id])
  end

  def photo

  end
end
