class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    t.string :name
    t.string :address
    t.string :category
    t.string :rating
    t.string :time
    t.string :date
    t.string :phone_number
    t.string :map_url
    t.string :img_url
    t.string :website_url
    t.references :location
    t.timestamps
    end
  end
end
