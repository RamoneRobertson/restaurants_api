class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = policy_scope(Restaurant)
  end
end
