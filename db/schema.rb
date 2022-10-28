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

ActiveRecord::Schema.define(version: 2022_10_28_061453) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "card1s", force: :cascade do |t|
    t.string "amount"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_card1s_on_user_id"
  end

  create_table "cardtotals", force: :cascade do |t|
    t.string "final_amount"
    t.integer "user_id", null: false
    t.integer "card1_id", null: false
    t.integer "menu_id", null: false
    t.integer "cart1_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card1_id"], name: "index_cardtotals_on_card1_id"
    t.index ["cart1_id"], name: "index_cardtotals_on_cart1_id"
    t.index ["menu_id"], name: "index_cardtotals_on_menu_id"
    t.index ["user_id"], name: "index_cardtotals_on_user_id"
  end

  create_table "cart1s", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total"
    t.integer "user_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "alltotal"
    t.index ["menu_id"], name: "index_cart1s_on_menu_id"
    t.index ["user_id"], name: "index_cart1s_on_user_id"
  end

  create_table "itemcounts", force: :cascade do |t|
    t.string "counter"
    t.integer "user_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_itemcounts_on_menu_id"
    t.index ["user_id"], name: "index_itemcounts_on_user_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "food_name"
    t.string "price"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "counter"
    t.string "quantity"
    t.string "total_price"
    t.index ["user_id"], name: "index_menus_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "food_name"
    t.integer "quantity"
    t.string "total_price"
    t.integer "user_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_orders_on_menu_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total_amount"
    t.integer "user_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_payments_on_menu_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "totalpayments", force: :cascade do |t|
    t.string "finaltotal"
    t.integer "cart1_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart1_id"], name: "index_totalpayments_on_cart1_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "card1s", "users"
  add_foreign_key "cardtotals", "card1s"
  add_foreign_key "cardtotals", "cart1s"
  add_foreign_key "cardtotals", "menus"
  add_foreign_key "cardtotals", "users"
  add_foreign_key "cart1s", "menus"
  add_foreign_key "cart1s", "users"
  add_foreign_key "itemcounts", "menus"
  add_foreign_key "itemcounts", "users"
  add_foreign_key "menus", "users"
  add_foreign_key "orders", "menus"
  add_foreign_key "orders", "users"
  add_foreign_key "payments", "menus"
  add_foreign_key "payments", "users"
  add_foreign_key "totalpayments", "cart1s"
end
