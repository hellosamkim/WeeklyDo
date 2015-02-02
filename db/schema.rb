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

ActiveRecord::Schema.define(version: 20150131190620) do

  create_table "day_tasks", force: true do |t|
    t.string   "task"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "finished_at"
  end

  add_index "day_tasks", ["day_id"], name: "index_day_tasks_on_day_id"

  create_table "days", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
