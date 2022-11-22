class UsersController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
  end

  def photo

  end
end
