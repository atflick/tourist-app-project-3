class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
  t.string :comment
  t.string :title
  t.references :events
  t.timestamps
    end
  end
end
