class Api::V1::HillsController < Api::V1::BaseController
  def index
    @hills = Hill.all
  end
end
