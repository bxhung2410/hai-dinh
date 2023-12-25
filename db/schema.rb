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

ActiveRecord::Schema[7.1].define(version: 2023_12_25_155815) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.bigint "category_id", null: false
    t.integer "quantity", default: 0, null: false
    t.decimal "default_price", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_beers_on_category_id"
    t.index ["name"], name: "index_beers_on_name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name", null: false
    t.string "usual_name", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name"], name: "index_customers_on_first_name"
    t.index ["phone_number"], name: "index_customers_on_phone_number"
    t.index ["usual_name"], name: "index_customers_on_usual_name"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address", null: false
    t.boolean "is_default", default: false, null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_locations_on_address"
    t.index ["customer_id"], name: "index_locations_on_customer_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number", null: false
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_suppliers_on_name"
    t.index ["phone_number"], name: "index_suppliers_on_phone_number"
  end

  add_foreign_key "beers", "categories"
  add_foreign_key "locations", "customers"
end
