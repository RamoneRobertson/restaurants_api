class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end
end
