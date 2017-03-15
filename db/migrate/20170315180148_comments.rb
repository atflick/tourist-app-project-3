class Comments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    t.string :comments
    t.string :title
    t.references :events, foreign_key: true
    t.timestamps
    end
  end
end
