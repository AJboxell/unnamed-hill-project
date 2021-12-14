class CreateHills < ActiveRecord::Migration[6.0]
  def change
    create_table :hills do |t|
      t.string :name

      t.timestamps
    end
  end
end
