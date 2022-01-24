module ViewMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      sign_in user
    end
  end

  def create_hill
    before(:each) do
      FactoryBot.create(:hill)
    end
  end

end
