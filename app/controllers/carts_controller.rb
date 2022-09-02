class CartsController < ApplicationController
  def index
    carts = Cart.all
    render json: carts.as_json
  end
end
