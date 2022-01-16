class PubsController < ApplicationController

  def index
    @pubs = Pub.all
    @markers = @pubs.map do |pub|
      {
        lat: pub.latitude,
        lng: pub.longitude,
        info_window: render_to_string(partial: "pub_info", locals: { pub: pub }),
        image_url: helpers.asset_url("mountain.svg"),
        pub: pub
      }
    end
  end
end
