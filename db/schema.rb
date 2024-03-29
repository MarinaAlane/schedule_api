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

ActiveRecord::Schema[7.1].define(version: 2024_01_21_135335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.decimal "total_vacancies"
    t.decimal "available_vacancies"
    t.date "time_start"
    t.bigint "user_id"
    t.bigint "modality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["modality_id"], name: "index_courses_on_modality_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "modality_tables", force: :cascade do |t|
    t.string "modality_name"
    t.string "modality_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
