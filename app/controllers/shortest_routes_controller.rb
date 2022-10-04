class ShortestRoutesController < ApplicationController
  def index
    response = HTTP.get("https://api.mapbox.com/directions-matrix/v1/mapbox/driving/-105.07044,39.66747;-104.837684,39.65612;-105.06748859825893,39.65969794446177;-105.289425,39.929021?sources=1&annotations=distance,duration&access_token=#{Rails.application.credentials.mapbox_api_key}")
    render json: response.parse
  end
end
