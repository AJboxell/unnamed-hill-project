require 'rails_helper'

RSpec.describe Climb, type: :model do
  current_user = User.first_or_create!(email: 'alexjboxell@gmail.com', username: 'Alex', password: 'password', password_confirmation: 'password')
  hill = Hill.new(name: 'Hilly McHillface', height: '1000')

  it 'has a year' do
    climb = Climb.new(
      hill: hill,
      year: '',
      user: current_user,
    )
    expect(climb).to_not be_valid

    climb.year = '2012'
    expect(climb).to be_valid
  end
end
