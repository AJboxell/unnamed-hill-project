class AddColumnToClimbs < ActiveRecord::Migration[6.0]
  def change
    add_column :climbs, :notes, :text
  end
end
