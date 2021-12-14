class AddCoordinatesToHills < ActiveRecord::Migration[6.0]
  def change
    add_column :hills, :latitude, :float
    add_column :hills, :longitude, :float
  end
end
