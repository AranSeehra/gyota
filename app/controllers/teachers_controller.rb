class TeachersController < ApplicationController
  def index
    # The `geocoded` scope filters only teachers with coordinates
    if params[:query].present?
      sql_query = <<~SQL
      teachers.location ILIKE :query
        OR teachers.first_name ILIKE :query
        OR directors.last_name ILIKE :query
        SQL
        @teachers = Teacher.where(sql_query, query: "%#{params[:query]}%")
    else
        @teachers = Teacher.all
    end

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
    @markers = [{lat: @teacher.latitude, lng: @teacher.longitude}]
    @booking = Booking.new

    @review = Review.new

  end

  private

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.find(strong_params)
    @teacher.save
  end

  private

  def strong_params
    params.require(:teacher).permit(:first_name, :last_name, :location, :bio, :specialty, :price, :photo)
  end
end
