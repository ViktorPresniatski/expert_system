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

ActiveRecord::Schema.define(version: 20171104052335) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expert_questionnare_responses", force: :cascade do |t|
    t.integer "expert_id"
    t.integer "ProblemRequest_id"
    t.text "response_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ProblemRequest_id"], name: "index_expert_questionnare_responses_on_ProblemRequest_id"
    t.index ["expert_id"], name: "index_expert_questionnare_responses_on_expert_id"
  end

  create_table "expert_responses", force: :cascade do |t|
    t.integer "expert_id"
    t.integer "ProblemRequest_id"
    t.text "responce_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ProblemRequest_id"], name: "index_expert_responses_on_ProblemRequest_id"
    t.index ["expert_id"], name: "index_expert_responses_on_expert_id"
  end

  create_table "problem_requests", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "questionnare_id"
    t.integer "category_id"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_problem_requests_on_author_id"
    t.index ["category_id"], name: "index_problem_requests_on_category_id"
    t.index ["questionnare_id"], name: "index_problem_requests_on_questionnare_id"
  end

  create_table "questionnares", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
