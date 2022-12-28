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

ActiveRecord::Schema[7.0].define(version: 2022_12_28_202919) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capstones", force: :cascade do |t|
    t.string "capstone_name"
    t.text "capstone_description"
    t.string "capstone_url"
    t.string "capstone_screenshot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "skills", force: :cascade do |t|
    t.boolean "python", default: false
    t.boolean "javascript", default: false
    t.boolean "java", default: false
    t.boolean "c", default: false
    t.boolean "C", default: false
    t.boolean "Cplus", default: false
    t.boolean "GO", default: false
    t.boolean "R", default: false
    t.boolean "swift", default: false
    t.boolean "PHP", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "other"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "short_bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "online_resume_url"
    t.string "github_url"
    t.string "photo_url"
    t.string "personal_website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
