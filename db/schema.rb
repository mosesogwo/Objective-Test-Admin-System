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

ActiveRecord::Schema.define(version: 2020_05_02_202909) do

  create_table "questions", force: :cascade do |t|
    t.text "q_text"
    t.text "q_options"
    t.string "q_answer"
    t.integer "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_questions_on_test_id"
  end

  create_table "results", force: :cascade do |t|
    t.float "score"
    t.string "remark"
    t.integer "test_id"
    t.integer "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_results_on_candidate_id"
    t.index ["test_id"], name: "index_results_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "title"
    t.date "start_date"
    t.date "end_date"
    t.float "pass_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
    t.index ["creator_id"], name: "index_tests_on_creator_id"
  end

  create_table "user_tests", force: :cascade do |t|
    t.integer "test_id"
    t.integer "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_user_tests_on_candidate_id"
    t.index ["test_id"], name: "index_user_tests_on_test_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
