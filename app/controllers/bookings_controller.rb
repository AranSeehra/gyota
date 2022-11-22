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
    @booking = Booking.new(booking_params)
    # @teacher.booking = @booking
    @booking.save
    redirect_to dashboard_index_path
  end

  def edit
    set_booking
  end

  def update
    set_booking
    @booking.update(booking_params)
    redirect_to teacher_path(@teacher)
  end

  def destroy
    @booking.destroy
    redirect_to teachers_path, status: :see_other
  end

  private

  def set_booking
    @teacher = Teacher.find(params[:teacher_id])
  end

  def booking_params
    params.require(:booking).permit(:timeslot, :start_at, :end_at, :teacher_id, :user_id)
  end
end
