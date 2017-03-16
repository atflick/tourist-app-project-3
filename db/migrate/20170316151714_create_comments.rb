class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    t.string :message
    t.string :author
    t.references :event, foreign_key: true
    t.timestamps
    end
  end
end
