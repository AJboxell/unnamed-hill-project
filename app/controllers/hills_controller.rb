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

  def find_pub
    Pub.destroy_all
    @hill = Hill.find(params[:id])
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/pub.json?proximity=#{@hill.longitude.to_f},#{@hill.latitude.to_f}&access_token=pk.eyJ1IjoiYWpib3hlbGwiLCJhIjoiY2t3ejVwMHY3MHVtbjJ0bGEybGhvdDBuaiJ9.DUmlRnTnLp2zgAeEBSA7hQ"
    serialized = URI.open(url).read
    @pubs = JSON.parse(serialized)
    @pubs["features"].each do |item|
      pub = Pub.new(name: item["place_name"], longitude: item["geometry"]["coordinates"][0], latitude: item["geometry"]["coordinates"][1])
      pub.save!
    end
    redirect_to pubs_path
  end
end
