class PagesController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
  end
end
