class ReviewsController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  #private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
