class ReviewsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @review = Review.new
  end

  def create
    @list = List.find(params[:list_id])
    @review = Review.new(params[:review])
    @list.review = @review
  end

  #private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
