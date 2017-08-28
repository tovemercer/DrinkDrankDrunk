class DrinksController < ApiController
  # GET /drinks
  def index
    @drinks = Drink.all

    render json: @drinks.to_json
  end

  # GET /drinks/1
  def show
    @drink = Drink.find(params[:id])
    render json: @drink.to_json(:include => { :ingredients => { :only => [:id, :description] } })
  end
end
