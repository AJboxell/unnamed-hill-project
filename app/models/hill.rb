class Hill < ApplicationRecord
  has_many :climbs

  def icon_size
    hill.height / 33
  end
end
