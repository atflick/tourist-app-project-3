class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :comment
      t.string :title
      t.string :img_url
      t.references :event, foreign_key: true
      t.timestamps
    end
  end
end
