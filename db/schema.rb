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

ActiveRecord::Schema.define(version: 2021_05_31_140159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carotte_cards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tasks_id", null: false
    t.date "week_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tasks_id"], name: "index_carotte_cards_on_tasks_id"
    t.index ["user_id"], name: "index_carotte_cards_on_user_id"
  end

  create_table "colocs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consommations", force: :cascade do |t|
    t.bigint "fun_cards_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fun_cards_id"], name: "index_consommations_on_fun_cards_id"
    t.index ["users_id"], name: "index_consommations_on_users_id"
  end

  create_table "fun_cards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.integer "points"
    t.bigint "coloc_id", null: false
    t.string "carotte_card_name"
    t.string "carotte_card_description"
    t.integer "carotte_card_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coloc_id"], name: "index_tasks_on_coloc_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id", null: false
    t.bigint "tasks_id", null: false
    t.date "week_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tasks_id"], name: "index_user_tasks_on_tasks_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "coloc_id", null: false
    t.string "avatar"
    t.string "name"
    t.index ["coloc_id"], name: "index_users_on_coloc_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carotte_cards", "tasks", column: "tasks_id"
  add_foreign_key "carotte_cards", "users"
  add_foreign_key "consommations", "fun_cards", column: "fun_cards_id"
  add_foreign_key "consommations", "users", column: "users_id"
  add_foreign_key "tasks", "colocs"
  add_foreign_key "user_tasks", "tasks", column: "tasks_id"
  add_foreign_key "user_tasks", "users"
  add_foreign_key "users", "colocs"
end
