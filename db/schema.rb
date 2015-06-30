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

ActiveRecord::Schema.define(version: 20150630003552) do

  create_table "bookmark_relationships", force: true do |t|
    t.integer  "bug_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bugs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "severity"
    t.string   "submiter"
    t.integer  "assignee_id"
    t.string   "status"
    t.integer  "views"
    t.string   "track"
    t.string   "project"
    t.string   "release"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comment_relationships", force: true do |t|
    t.integer  "bug_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "follow_relationships", force: true do |t|
    t.integer  "bug_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rating_relationships", force: true do |t|
    t.integer  "bug_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "uid"
    t.string   "name"
    t.string   "title"
    t.string   "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
