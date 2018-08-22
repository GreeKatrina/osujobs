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

ActiveRecord::Schema.define(version: 2018_08_22_052951) do

  create_table "jobs", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.boolean "full_time", default: false, null: false
    t.boolean "temporary", default: false, null: false
    t.datetime "posting_start_date"
    t.datetime "posting_end_date"
    t.string "dept_contact_name", default: "", null: false
    t.string "dept_contact_phone", default: "", null: false
    t.string "link", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "entry_id", null: false
    t.datetime "entry_published", null: false
    t.datetime "entry_updated", null: false
    t.string "department", default: "", null: false
    t.string "target_salary", default: "", null: false
    t.index ["entry_id"], name: "index_jobs_on_entry_id", unique: true
  end

end
