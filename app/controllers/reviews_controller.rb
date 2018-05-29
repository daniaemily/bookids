class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @personalization = Personalization.find(params[:personalization_id])
  end

  def create
    @review = Review.new(review_params)
    @personalization = Personalization.find(params[:personalization_id])
    @review.personalization = @personalization
    @review.save
    redirect_to dashboard_path
  end

  private
  def review_params
    params.require(:review).permit(:header, :description, :stars)
  end
end
