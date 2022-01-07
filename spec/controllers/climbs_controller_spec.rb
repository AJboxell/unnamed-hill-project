require 'rails_helper'

RSpec.describe ClimbsController, type: :controller do

  login_user

  let(:valid_attributes) {
    { :year => "2000", :user_id => User.last.id, :hill_id => Hill.last.id }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Climb.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
      # expect(response).to have_http_status(302)
    end
  end
end
