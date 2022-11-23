class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :dashboard
  def dashboard
    @user = User.find(params[:id])
  end

  def photo

  end
end
