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

ActiveRecord::Schema.define(version: 2020_03_20_145248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atmospheres", force: :cascade do |t|
    t.integer "oxygen", default: 30
    t.integer "carbon_dioxide", default: 25
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trees", force: :cascade do |t|
    t.string "image", default: "https://toppng.com/uploads/preview/ine-trees-silhouette-clipart-panda-pine-tree-vector-115630115124z9ezkopbw.png"
    t.string "size", default: "small"
    t.integer "oxygen", default: 3
    t.integer "carbon_dioxide", default: -2
    t.integer "firewood", default: 0
    t.integer "atmosphere_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
