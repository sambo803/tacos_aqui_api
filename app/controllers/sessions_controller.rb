class SessionsController < ApplicationController
  def create
    owner = Owner.find_by(email: params[:email])
    if owner && owner.authenticate(params[:password])
      jwt = JWT.encode(
        {
          owner_id: owner.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: owner.email, owner_id: owner.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
