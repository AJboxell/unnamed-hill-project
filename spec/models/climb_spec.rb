require 'rails_helper'

RSpec.describe Climb, type: :model do
  # if tester = User.find(1)
  #   tester.destroy
  # end
  current_user = User.first_or_create!(email: 'robopigeon@test.com', password: 'password', username: 'Pancake')
  create_hill

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

  it 'is attached to a hill' do
    climb = Climb.new(
      year: '2020',
      user: current_user
    )
    expect(climb).to_not be_valid
    climb.hill_id = Hill.last.id
    expect(climb).to be_valid
  end
end
