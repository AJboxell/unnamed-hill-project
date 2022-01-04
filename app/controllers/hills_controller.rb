class HillsController < ApplicationController

  def index
    if params[:query].present?
      @hills = Hill.all.select { |hill| hill.height >= params[:query].to_i }
    else
      @hills = Hill.all
    end
    @markers = @hills.map do |hill|
      {
        lat: hill.latitude,
        lng: hill.longitude,
        info_window: render_to_string(partial: "info_window", locals: { hill: hill }),
        image_url: helpers.asset_url("mountain.svg"),
        width: hill.height / 33,
        height: hill.height / 33,
        hill: hill
      }
    end
  end

  def show
    @hill = Hill.find(params[:id])
  end
end
