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

ActiveRecord::Schema.define(version: 20140325004846) do

  create_table "blogs", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "post_id",    null: false
    t.text     "message",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["post_id"], name: "index_messages_on_post_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "title",      null: false
    t.text     "context"
    t.integer  "user_id",    null: false
    t.integer  "blog_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["blog_id"], name: "index_posts_on_blog_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
