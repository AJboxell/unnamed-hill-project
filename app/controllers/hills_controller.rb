class HillsController < ApplicationController

  def index
    @hills = Hill.all
    @markers = @hills.map do |hill|
      {
        lat: hill.latitude,
        lng: hill.longitude,
        image_url: helpers.asset_url("mountain.svg")
      }
    end
  end

  def show
    @hill = Hill.find(params[:id])
  end
end
