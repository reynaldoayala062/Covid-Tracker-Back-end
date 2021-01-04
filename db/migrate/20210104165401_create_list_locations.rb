class CreateListLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :list_locations do |t|
      t.integer :favorite_list_id
      t.integer :location_id

      t.timestamps
    end
  end
end
