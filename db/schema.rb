# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_20_172251) do

  create_table "feeds", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_question_options", force: :cascade do |t|
    t.integer "job_question_id"
    t.string "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_questions", force: :cascade do |t|
    t.integer "job_id"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "top_message"
    t.text "message_to_applicants"
    t.integer "num_positions_available"
    t.string "university_title"
    t.string "working_title"
    t.string "department"
    t.string "department_location"
    t.integer "requisition_number"
    t.text "summary_of_duties"
    t.text "add_info_for_applicants"
    t.string "pre_employment_screening"
    t.text "required_qualifications"
    t.text "desired_qualifications"
    t.string "target_salary"
    t.string "job_category"
    t.string "job_appointment"
    t.boolean "full_time"
    t.boolean "temporary"
    t.datetime "posting_start_date"
    t.datetime "posting_end_date"
    t.string "dept_contact_name"
    t.string "dept_contact_phone"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "posting_updated_date"
  end

  create_table "optional_documents", force: :cascade do |t|
    t.integer "job_id"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "required_documents", force: :cascade do |t|
    t.integer "job_id"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
