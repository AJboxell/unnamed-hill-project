class AddNameToPubs < ActiveRecord::Migration[6.0]
  def change
    add_column :pubs, :name, :string
  end
end
