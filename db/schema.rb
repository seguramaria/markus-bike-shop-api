# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_26_140109) do
  create_table "chains", force: :cascade do |t|
    t.string "variant"
    t.decimal "price"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finishes", force: :cascade do |t|
    t.string "variant"
    t.decimal "price"
    t.integer "frame_id", null: false
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frame_id"], name: "index_finishes_on_frame_id"
  end

  create_table "frames", force: :cascade do |t|
    t.string "variant"
    t.decimal "price"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incompatibilities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item1_id"
    t.integer "item2_id"
    t.string "item1_type"
    t.string "item2_type"
  end

  create_table "rims", force: :cascade do |t|
    t.string "rim_color"
    t.decimal "price"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wheels", force: :cascade do |t|
    t.string "variant"
    t.decimal "price"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "finishes", "frames"
end
