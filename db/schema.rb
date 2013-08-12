# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130812191038) do

  create_table "answers", force: true do |t|
    t.string   "title"
    t.string   "question_id"
    t.integer  "linked_to_answer_id"
    t.boolean  "correct_answer"
    t.text     "explain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "title"
    t.string   "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useranswers", force: true do |t|
    t.integer  "question_id"
    t.string   "answers"
    t.integer  "timespent"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "cell"
    t.boolean  "banned"
    t.string   "confirmation_code"
    t.string   "firstname"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
