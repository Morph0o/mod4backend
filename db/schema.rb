# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_02_171955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monster_moves", force: :cascade do |t|
    t.string "name"
    t.string "attack"
    t.string "integer"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "str"
    t.integer "hp"
    t.string "desc"
    t.string "img"
    t.integer "move_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_moves", force: :cascade do |t|
    t.string "name"
    t.string "attack"
    t.string "integer"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.integer "str"
    t.integer "hp"
    t.string "desc"
    t.string "img"
    t.integer "moveone_id"
    t.integer "movethree_id"
    t.string "movefourid"
    t.string "integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
