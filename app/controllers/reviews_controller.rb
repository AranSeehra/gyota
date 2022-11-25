class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher
    if @review.save
      redirect_to teacher_path(@teacher)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
