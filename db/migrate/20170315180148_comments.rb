class Comments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    t.string :comment
    t.string :title
    t.references :comments, foreign_key: true
    t.timestamps
  end
end
