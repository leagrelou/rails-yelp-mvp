class ReviewsController < ApplicationController
  # GET /restaurants/:restaurant_id/reviews/new
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # /restaurants/:restaurant_id/reviews
  def create
    # PARAMS:{ {"content"=>"Great food"}, "restaurant_id"=>"1"}
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
    # Restaurant.find retourne un chiffre ou une instance de la classe Restaurant ?
  end

  private

  # returns { content: "....." }
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
