# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170316151714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "message"
    t.string   "author"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "category"
    t.string   "rating"
    t.string   "description"
    t.string   "time"
    t.string   "date"
    t.string   "phone_number"
    t.string   "map_url"
    t.string   "img_url"
    t.string   "website_url"
    t.integer  "location_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["location_id"], name: "index_events_on_location_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "comment"
    t.string   "title"
    t.string   "img_url"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_photos_on_event_id", using: :btree
  end

  add_foreign_key "comments", "events"
  add_foreign_key "events", "locations"
  add_foreign_key "photos", "events"
end
