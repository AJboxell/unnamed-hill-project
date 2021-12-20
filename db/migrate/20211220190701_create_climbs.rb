class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hill, null: false, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
