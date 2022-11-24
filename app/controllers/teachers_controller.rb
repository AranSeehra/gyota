class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    # The `geocoded` scope filters only teachers with coordinates
    @markers = @teachers.geocoded.map do |teacher|
      {
        lat: teacher.latitude,
        lng: teacher.longitude,
        info_window: render_to_string(partial: "info_window", locals: {teacher: teacher})
      }
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    @booking = Booking.new

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
    params.require(:teacher).permit(:first_name, :last_name, :location, :bio, :specialty, :price, :photo)
  end
end
