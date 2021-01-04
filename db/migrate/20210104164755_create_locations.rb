class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :details

      t.timestamps
    end
  end
end
