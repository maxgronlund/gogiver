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

ActiveRecord::Schema.define(:version => 20110715090513) do

  create_table "actions", :force => true do |t|
    t.string   "title"
    t.datetime "due_date"
    t.integer  "goal_id"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actions", ["goal_id"], :name => "index_actions_on_goal_id"

  create_table "goals", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "accomplished"
    t.datetime "due_date"
    t.integer  "life_array_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_term_strategy"
    t.text     "long_term_strategy"
    t.text     "requirement"
    t.text     "resistance"
    t.text     "support"
    t.text     "pay_back"
  end

  add_index "goals", ["life_array_id"], :name => "index_goals_on_life_array_id"

  create_table "key_values", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "key_values", ["user_id"], :name => "index_key_values_on_user_id"

  create_table "life_arrays", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "life_arrays", ["user_id"], :name => "index_life_arrays_on_user_id"

  create_table "text_contents", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identity"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128,  :default => "", :null => false
    t.string   "password_salt",                        :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "role"
    t.string   "image"
    t.string   "crop_params",          :limit => 1024
    t.string   "string",               :limit => 1024
    t.text     "slogan"
    t.text     "grateful"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "grid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
