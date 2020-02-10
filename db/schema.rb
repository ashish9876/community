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

ActiveRecord::Schema.define(version: 2020_02_06_095701) do

  create_table "accounts", force: :cascade do |t|
    t.integer "acc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "supplier_id"
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "dogg_breeds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dogg_id"
    t.index ["dogg_id"], name: "index_dogg_breeds_on_dogg_id"
  end

  create_table "doggs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pet_id"
    t.index ["pet_id"], name: "index_doggs_on_pet_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forums_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "forum_id", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_histories_on_account_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "twitter"
    t.string "fb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "dogg_breeds", "doggs"
  add_foreign_key "doggs", "pets"
  add_foreign_key "histories", "accounts"
  add_foreign_key "profiles", "users"
end
