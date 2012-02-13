class HousesController < ApplicationController
  def index
    @houses = House.limit(5).all
  end

  def new
    @house = House.new
  end
end
