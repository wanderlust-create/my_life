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

ActiveRecord::Schema[7.0].define(version: 2022_06_06_001518) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "elephants", force: :cascade do |t|
    t.string "life"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_elephants_on_user_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.integer "points"
    t.text "description"
    t.integer "time_minutes"
    t.bigint "elephant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["elephant_id"], name: "index_pieces_on_elephant_id"
  end

  create_table "user_affirmations", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_affirmations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "elephants", "users"
  add_foreign_key "pieces", "elephants"
  add_foreign_key "user_affirmations", "users"
end
