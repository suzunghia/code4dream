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

ActiveRecord::Schema.define(version: 20170711061118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "articles_categories", id: false, force: :cascade do |t|
    t.integer "content_id"
    t.integer "category_id"
  end

  create_table "articles_tags", id: false, force: :cascade do |t|
    t.integer "content_id"
    t.integer "tag_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "display_name"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "content_type"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "author"
    t.string   "user_id"
    t.string   "permalink"
    t.string   "state"
    t.datetime "published_at"
    t.text     "body_seo"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.text     "display_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
