require 'date'
class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    # year_s = params[:booking]["start_at(1i)"].to_i
    # month_s = params[:booking]["start_at(2i)"].to_i
    # date_s = params[:booking]["start_at(3i)"].to_i
    # hour_s = params[:booking]["start_at(4i)"].to_i
    # minute_s = params[:booking]["start_at(5i)"].to_i
    # start = DateTime.new(year_s, month_s, date_s, hour_s, minute_s)

    # year_e = params[:booking]["end_at(1i)"].to_i
    # month_e = params[:booking]["end_at(2i)"].to_i
    # date_e = params[:booking]["end_at(3i)"].to_i
    # hour_e = params[:booking]["end_at(4i)"].to_i
    # minute_e = params[:booking]["end_at(5i)"].to_i
    # endtime = DateTime.new(year_e, month_e, date_e, hour_e, minute_e)

    @booking = Booking.new(booking_params)
    # @booking.start_at = start
    # @booking.end_at = endtime
    @booking.teacher = @teacher
    @booking.user = current_user
    @review = Review.new
    if @booking.save
      redirect_to dashboard_path(current_user), notice: "Your booking has been successful!"
    else
      render template: "teachers/show", status: :unprocessable_entity
    end
  end

  # def edit

  #   @booking = Booking.where(current_user.booking.id)

  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_params)
  #   redirect_to dashboard_path(current_user)
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(current_user), status: :see_other
  end

  private

  def set_booking
    @teacher = Teacher.find(params[:teacher_id])
  end

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :completed, :teacher_id, :user_id)
  end
end
