class CartsController < ApplicationController
  def index
    carts = Cart.all
    render json: carts.as_json
  end
  
  def create
    cart = Cart.new(
      name: params[:name],
      location: params[:location],
      longitude: params[:longitude],
      latitude: params[:latitude],
      email: params[:email],
      phone_number: params[:phone_number],
      image_url: params[:image_url]
    )
    cart.save
    render json: cart.as_json
  end

  def show
    cart = Cart.find_by(id: params[:id])
    render json: cart.as_json
  end
  
  def update
    cart = Cart.find_by(id: params[:id])
    cart.name = params[:name] || cart.name
    cart.location = params[:location] || cart.location
    cart.latitude = params[:latitude] || cart.latitude
    cart.longitude = params[:longitude] || cart.longitude
    cart.email = params[:email] || cart.email
    cart.phone_number = params[:phone_number] || cart.phone_number
    cart.image_url = params[:image_url] || cart.image_url
    cart.save
    render json: cart.as_json
  end
end
