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

ActiveRecord::Schema.define(version: 2024_10_15_061006) do

  create_table "attends", force: :cascade do |t|
    t.date "input"
    t.boolean "hr_attend1"
    t.boolean "hr_attend2"
    t.boolean "attend1"
    t.boolean "attend2"
    t.boolean "attend3"
    t.boolean "attend4"
    t.boolean "attend5"
    t.boolean "attend6"
    t.boolean "attend7"
    t.string "hr_comment1"
    t.string "hr_comment2"
    t.string "comment1"
    t.string "comment2"
    t.string "comment3"
    t.string "comment4"
    t.string "comment5"
    t.string "comment6"
    t.string "comment7"
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_name"
    t.string "class_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "teacher_id"
    t.date "input"
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "pw"
    t.integer "grade_id"
    t.string "kana"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "pw"
    t.integer "room_id"
    t.string "kana"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.date "input"
    t.integer "grade_id"
    t.integer "subject_id1"
    t.integer "subject_id2"
    t.integer "subject_id3"
    t.integer "subject_id4"
    t.integer "subject_id5"
    t.integer "subject_id6"
    t.integer "subject_id7"
    t.integer "teacher_id1"
    t.integer "teacher_id2"
    t.integer "teacher_id3"
    t.integer "teacher_id4"
    t.integer "teacher_id5"
    t.integer "teacher_id6"
    t.integer "teacher_id7"
    t.integer "hr_teacher_id1"
    t.integer "hr_teacher_id2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
