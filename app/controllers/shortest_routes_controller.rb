class ShortestRoutesController < ApplicationController
  def index
    response = HTTP.get("https://api.mapbox.com/directions-matrix/v1/mapbox/driving/-122.418563,37.751659;-122.422969,37.75529;-122.426904,37.759617?sources=0&annotations=distance,duration&access_token=#{Rails.application.credentials.mapbox_api_key}")
    render json: response.parse
  end
end
