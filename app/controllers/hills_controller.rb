class HillsController < ApplicationController

  def index
    @hills = Hill.all
  end

  def show
    @hill = Hill.find(params[:id])
  end
end
