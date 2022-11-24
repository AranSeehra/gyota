class ReviewsController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new
  end

  def create
    @teacher = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher
    if @review.save
      redirect_to teacher_path(@teacher)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
