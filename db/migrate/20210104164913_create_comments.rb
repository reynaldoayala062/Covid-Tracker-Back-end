class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :detail
      t.integer :star_rating
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
