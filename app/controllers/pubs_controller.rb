class PubsController < ApplicationController

  def index
    @pubs = Pub.all
  end
end
