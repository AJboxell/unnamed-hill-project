class ClimbsController < ApplicationController

  def create
    @climb = Climb.new(climb_params)
    @climb.user = current_user
    @climb.save!
  end

  private

  def climb_params
    params.require(:climb).permit(:year, :hill_id, :user_id)
  end
end
