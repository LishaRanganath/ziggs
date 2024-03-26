class MainController < ApplicationController
  def index
    @restaurant_all=Restaurant.all
  end
end
