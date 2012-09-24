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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120923144036) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.text     "address1"
    t.text     "address2"
    t.string   "city"
    t.integer  "zip"
    t.string   "province_state"
    t.string   "country"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "description"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "brands", ["client_id"], :name => "index_brands_on_client_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.text     "description"
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "permissions", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_role_id"
    t.string   "company_module"
    t.string   "restaurant_module"
    t.string   "branch_module"
    t.string   "role_module"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "permissions", ["company_id"], :name => "index_permissions_on_company_id"
  add_index "permissions", ["user_role_id"], :name => "index_permissions_on_role_id"

  create_table "user_roles", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_roles", ["company_id"], :name => "index_user_roles_on_company_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "mobile"
    t.string   "username"
    t.string   "status"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
