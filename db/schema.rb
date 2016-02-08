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

ActiveRecord::Schema.define(version: 20160207230906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subreddits", force: :cascade do |t|
    t.string  "url"
    t.integer "theme_id"
  end

  add_index "subreddits", ["theme_id"], name: "index_subreddits_on_theme_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
  end

  create_table "themes_tips", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "tip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "themes_tips", ["theme_id"], name: "index_themes_tips_on_theme_id", using: :btree
  add_index "themes_tips", ["tip_id"], name: "index_themes_tips_on_tip_id", using: :btree

  create_table "tips", force: :cascade do |t|
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_tips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tip_id"
  end

  add_index "user_tips", ["tip_id"], name: "index_user_tips_on_tip_id", using: :btree
  add_index "user_tips", ["user_id"], name: "index_user_tips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_foreign_key "themes_tips", "themes"
  add_foreign_key "themes_tips", "tips"
  add_foreign_key "user_tips", "tips"
  add_foreign_key "user_tips", "users"
end
