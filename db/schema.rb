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

ActiveRecord::Schema.define(version: 20150321004815) do

  create_table "categories", force: :cascade do |t|
    t.string   "label",       limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cities", id: false, force: :cascade do |t|
    t.integer  "zip",        limit: 4
    t.string   "city",       limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "criteria", force: :cascade do |t|
    t.string   "type_of",     limit: 255
    t.string   "label",       limit: 255
    t.integer  "interest_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string   "follower_type",   limit: 255
    t.integer  "follower_id",     limit: 4
    t.string   "followable_type", limit: 255
    t.integer  "followable_id",   limit: 4
    t.datetime "created_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "interests", force: :cascade do |t|
    t.string   "cgt_code",    limit: 255
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "address",     limit: 255
    t.integer  "zip",         limit: 4
    t.string   "mobile",      limit: 255
    t.string   "phone",       limit: 255
    t.string   "email",       limit: 255
    t.string   "website",     limit: 255
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
    t.string   "source",      limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string   "liker_type",    limit: 255
    t.integer  "liker_id",      limit: 4
    t.string   "likeable_type", limit: 255
    t.integer  "likeable_id",   limit: 4
    t.datetime "created_at"
  end

  add_index "likes", ["likeable_id", "likeable_type"], name: "fk_likeables", using: :btree
  add_index "likes", ["liker_id", "liker_type"], name: "fk_likes", using: :btree

  create_table "media", force: :cascade do |t|
    t.integer  "interest_id", limit: 4
    t.string   "type",        limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mentions", force: :cascade do |t|
    t.string   "mentioner_type",   limit: 255
    t.integer  "mentioner_id",     limit: 4
    t.string   "mentionable_type", limit: 255
    t.integer  "mentionable_id",   limit: 4
    t.datetime "created_at"
  end

  add_index "mentions", ["mentionable_id", "mentionable_type"], name: "fk_mentionables", using: :btree
  add_index "mentions", ["mentioner_id", "mentioner_type"], name: "fk_mentions", using: :btree

  create_table "storytime_actions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "guid",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_actions", ["guid"], name: "index_storytime_actions_on_guid", using: :btree

  create_table "storytime_autosaves", force: :cascade do |t|
    t.text     "content",          limit: 65535
    t.integer  "autosavable_id",   limit: 4
    t.string   "autosavable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_autosaves", ["autosavable_type", "autosavable_id"], name: "autosavable_index", using: :btree

  create_table "storytime_comments", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_comments", ["post_id"], name: "index_storytime_comments_on_post_id", using: :btree
  add_index "storytime_comments", ["user_id"], name: "index_storytime_comments_on_user_id", using: :btree

  create_table "storytime_media", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_media", ["user_id"], name: "index_storytime_media_on_user_id", using: :btree

  create_table "storytime_permissions", force: :cascade do |t|
    t.integer  "role_id",    limit: 4
    t.integer  "action_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_permissions", ["action_id"], name: "index_storytime_permissions_on_action_id", using: :btree
  add_index "storytime_permissions", ["role_id"], name: "index_storytime_permissions_on_role_id", using: :btree

  create_table "storytime_posts", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "type",               limit: 255
    t.string   "title",              limit: 255
    t.string   "slug",               limit: 255
    t.text     "content",            limit: 65535
    t.text     "excerpt",            limit: 65535
    t.datetime "published_at"
    t.integer  "featured_media_id",  limit: 4
    t.boolean  "featured",           limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "secondary_media_id", limit: 4
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "street",             limit: 255
    t.integer  "zipcode",            limit: 4
    t.string   "city",               limit: 255
    t.float    "longitude",          limit: 24
    t.float    "latitude",           limit: 24
  end

  add_index "storytime_posts", ["slug"], name: "index_storytime_posts_on_slug", using: :btree
  add_index "storytime_posts", ["user_id"], name: "index_storytime_posts_on_user_id", using: :btree

  create_table "storytime_roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_roles", ["name"], name: "index_storytime_roles_on_name", using: :btree

  create_table "storytime_sites", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.integer  "post_slug_style",   limit: 4,   default: 0
    t.string   "ga_tracking_id",    limit: 255
    t.integer  "root_page_content", limit: 4,   default: 0
    t.integer  "root_post_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_sites", ["root_post_id"], name: "index_storytime_sites_on_root_post_id", using: :btree

  create_table "storytime_snippets", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_snippets", ["name"], name: "index_storytime_snippets_on_name", using: :btree

  create_table "storytime_subscriptions", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.boolean  "subscribed", limit: 1,   default: true
    t.string   "token",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id",    limit: 4
  end

  add_index "storytime_subscriptions", ["token"], name: "index_storytime_subscriptions_on_token", using: :btree

  create_table "storytime_taggings", force: :cascade do |t|
    t.integer  "tag_id",     limit: 4
    t.integer  "post_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_taggings", ["post_id"], name: "index_storytime_taggings_on_post_id", using: :btree
  add_index "storytime_taggings", ["tag_id"], name: "index_storytime_taggings_on_tag_id", using: :btree

  create_table "storytime_tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storytime_versions", force: :cascade do |t|
    t.text     "content",          limit: 65535
    t.integer  "user_id",          limit: 4
    t.integer  "versionable_id",   limit: 4
    t.string   "versionable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storytime_versions", ["user_id"], name: "index_storytime_versions_on_user_id", using: :btree
  add_index "storytime_versions", ["versionable_type", "versionable_id"], name: "versionable_index", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.integer  "storytime_role_id",      limit: 4
    t.string   "storytime_name",         limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["storytime_role_id"], name: "index_users_on_storytime_role_id", using: :btree

end
