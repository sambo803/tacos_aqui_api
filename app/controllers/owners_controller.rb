class OwnersController < ApplicationController
  def create
    owner = Owner.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if owner.save
      render json: { message: "Owner created successfully" }, status: :created
    else
      render json: { errors: owner.errors.full_messages }, status: :bad_request
    end
  end
end
