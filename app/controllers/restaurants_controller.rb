class RestaurantsController < ApplicationController
   before_action :set_restaurant, only: [:show]

  def index
     @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def restaurant_params
      params.require(:restaurant).permit(:name, :address)
  end
end
