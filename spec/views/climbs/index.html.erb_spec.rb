require 'rails_helper'

RSpec.describe "climbs/index.html.erb", type: :view do
  login_user
  create_hill

  before(:each) do
    assign(:climbs, [
      Climb.create!(
        year: "2001",
        user_id: User.last.id,
        hill_id: Hill.last.id
      ),
      Climb.create!(
        year: "2002",
        user_id: User.last.id,
        hill_id: Hill.last.id      )
    ])
  end

  it "renders a list of climbs" do
    render
    assert_select "div", text: Hill.last.name.to_s, count: 2
    expect(rendered).to have_selector("div", text: "2001")
    expect(rendered).to have_selector("div", text: "2002")
  end
end
