class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.find(strong_params)
    @teacher.save
  end

  def strong_params
    params.require(:teacher).permit(:first_name, :last_name, :location, :bio, :specialty, :photo)
  end
end
