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
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/pub.json?proximity=#{@hill.longitude.to_f},#{@hill.latitude.to_f}&access_token=pk.eyJ1IjoiYWpib3hlbGwiLCJhIjoiY2t2Y2FzZHZiMDNzbDMwbjNxc3M0N3hkMSJ9.1xPb_bMld-VYiN0euzA8iA"
    serialized = URI.open(url).read
    @pubs = JSON.parse(serialized)
    @pubs["features"].each do |item|
      pub = Pub.new(name: item["place_name"])
      pub.save!
    end
    redirect_to pubs_path
  end
end
