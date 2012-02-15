class HousesController < ApplicationController
  def index
    @houses = House.limit(5).all
  end

  def new
    @house = House.new
  end

  def create
  	@house = House.new(params[:house])

  	if @house.save
  		flash[:success] = "House has been successfully saved!"
      redirect_to 'houses#index'
    else
      flash[:error] = "House could not be saved!"
    end
  end

  def destroy
    p params
    House.find(params[:id]).delete
    flash[:notice] = "The house was successfully deleted."
    redirect_to :action => :index
  end
end
