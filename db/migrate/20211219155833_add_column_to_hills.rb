class AddColumnToHills < ActiveRecord::Migration[6.0]
  def change
    add_column :hills, :country, :string
  end
end
