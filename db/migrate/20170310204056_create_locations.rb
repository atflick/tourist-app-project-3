class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :city
      t.string :country
      t.string :img_url
      t.timestamps
    end
  end
end
