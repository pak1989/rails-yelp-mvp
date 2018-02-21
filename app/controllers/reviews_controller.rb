class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def index
     @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @review.restaurant
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    # filters the user input to use only the correct ones
    params.require(:review).permit(:content, :rating)
end
end
