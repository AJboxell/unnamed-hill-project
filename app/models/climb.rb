class Climb < ApplicationRecord
  belongs_to :user
  belongs_to :hill
  validates :year, presence: true
end
