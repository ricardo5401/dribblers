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

ActiveRecord::Schema.define(version: 20170606011526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "susbcription_price_anually_payment"
    t.string   "subscription_price_monthly_payment"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "training_activity_id"
    t.integer  "failed"
    t.integer  "asserted"
    t.datetime "startted_at"
    t.datetime "finished_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "description"
    t.datetime "event_date"
    t.boolean  "private"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "subscription_id"
    t.float    "price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "account_type_id"
    t.integer  "payment_id"
    t.datetime "expired_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tips", force: :cascade do |t|
    t.integer  "training_plan_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "training_activities", force: :cascade do |t|
    t.integer  "training_plan_id"
    t.integer  "shoot_count"
    t.boolean  "with_time"
    t.datetime "expected_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "description"
    t.string   "picture"
  end

  create_table "training_plans", force: :cascade do |t|
    t.string   "name"
    t.string   "shoot_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "token"
    t.integer  "account_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "picture"
  end

end
