class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # il faut que le id soit dans le meme ordre ?
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
    # ce if statement est en fonction des validations ? et ca va garder le new
    # prerempli grace a bootstraps ?
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    # qu'est-ce que cette fonction doit renvoyer ?
    # juste apres require, toujours restaurant singulier ?
  end
end

# comment reussir a faire apparaitre params ?
