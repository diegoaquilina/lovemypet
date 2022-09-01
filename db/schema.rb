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

ActiveRecord::Schema[7.0].define(version: 2022_09_01_185217) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "address"
    t.string "phone"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
  end

  create_table "baths", force: :cascade do |t|
    t.string "category"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.date "date"
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_baths_on_pet_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "category"
    t.string "brand"
    t.float "bag_qty_kg"
    t.float "daily_qty_kg"
    t.date "start_date"
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_foods_on_pet_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.float "dose"
    t.string "dose_unit"
    t.string "instructions"
    t.date "reminder"
    t.integer "frequency"
    t.integer "days_qty"
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_medications_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "size"
    t.date "age"
    t.integer "weight"
    t.string "sex"
    t.boolean "neutered"
    t.boolean "microchipped"
    t.string "feeding_schedule"
    t.string "energy_level"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_photo"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "category"
    t.string "company"
    t.string "url"
    t.string "description"
    t.string "phone"
    t.string "photo"
    t.integer "rating"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
    t.date "bday"
    t.string "url_photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "vaccine_type"
    t.date "app_date"
    t.date "expiry_date"
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_photo"
    t.index ["pet_id"], name: "index_vaccines_on_pet_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "pets"
  add_foreign_key "baths", "pets"
  add_foreign_key "foods", "pets"
  add_foreign_key "medications", "pets"
  add_foreign_key "pets", "users"
  add_foreign_key "vaccines", "pets"
end
