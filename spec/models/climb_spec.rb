require 'rails_helper'

RSpec.describe Climb, type: :model do
  current_user = User.first_or_create!(email: 'dean@example.com', password: 'password')

  it 'has a year' do
    climb = Climb.new(
      year: '',
      hill_id: Hill.last.id,
      user: current_user
    )
    expect(climb).to_not be_valid
    climb.year = '2000'
    expect(climb).to be_valid
  end
end
