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

ActiveRecord::Schema.define(version: 20160915180133) do

  create_table "links", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "survey_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "links", ["survey_id"], name: "fk_rails_710230efdb", using: :btree
  add_index "links", ["user_id"], name: "fk_rails_005e9b2a6a", using: :btree

  create_table "options", force: :cascade do |t|
    t.string   "q_option",    limit: 255
    t.integer  "survey_id",   limit: 4
    t.integer  "question_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "options", ["question_id"], name: "fk_rails_919a0dabf9", using: :btree
  add_index "options", ["survey_id"], name: "fk_rails_3323737b2d", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "q_name",       limit: 255
    t.string   "q_definition", limit: 255
    t.integer  "survey_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "questions", ["survey_id"], name: "fk_rails_15f8f0ec98", using: :btree

  create_table "references", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.integer  "option_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "references", ["option_id"], name: "fk_rails_6c2eaaf1c7", using: :btree
  add_index "references", ["question_id"], name: "fk_rails_f8ae260877", using: :btree
  add_index "references", ["user_id"], name: "fk_rails_67b9238c61", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "last_name",          limit: 255
    t.string   "email",              limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "password_digest",    limit: 255
    t.boolean  "admin",                          default: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "links", "surveys"
  add_foreign_key "links", "users"
  add_foreign_key "options", "questions"
  add_foreign_key "options", "surveys"
  add_foreign_key "questions", "surveys"
  add_foreign_key "references", "options"
  add_foreign_key "references", "questions"
  add_foreign_key "references", "users"
end
