class HillsController < ApplicationController

  def index
    @hills = Hill.all
    @markers = @hills.map do |hill|
      {
        lat: hill.latitude,
        lng: hill.longitude,
        info_window: render_to_string(partial: "info_window", locals: { hill: hill }),
        image_url: helpers.asset_url("mountain.svg"),
        width: hill.height / 33,
        height: hill.height / 33
      }
    end
  end

  def show
    @hill = Hill.find(params[:id])
  end
end
