# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090928172312) do

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "creator_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], :name => "index_comments_on_commentable_id_and_commentable_type"

  create_table "dashboards", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestones", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "due_date"
    t.date     "end_date"
    t.text     "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "milestones", ["id"], :name => "index_milestones_on_id"

  create_table "priorities", :force => true do |t|
    t.string   "name"
    t.integer  "order"
    t.string   "colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "priorities", ["id"], :name => "index_priorities_on_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["id"], :name => "index_roles_on_id"

  create_table "settings", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["key"], :name => "index_settings_on_key"

  create_table "stages", :force => true do |t|
    t.string   "name"
    t.string   "colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stages", ["id"], :name => "index_stages_on_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.boolean  "openstate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["id"], :name => "index_states_on_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "ticket_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ticket_types", ["id"], :name => "index_ticket_types_on_id"

  create_table "tickets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priority_id"
    t.integer  "stage_id"
    t.integer  "state_id"
    t.integer  "milestone_id"
    t.integer  "owner_id"
    t.integer  "parent_id"
    t.integer  "ticket_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["id"], :name => "index_tickets_on_id"
  add_index "tickets", ["milestone_id"], :name => "index_tickets_on_milestone_id"
  add_index "tickets", ["owner_id"], :name => "index_tickets_on_owner_id"
  add_index "tickets", ["parent_id"], :name => "index_tickets_on_parent_id"
  add_index "tickets", ["priority_id"], :name => "index_tickets_on_priority_id"
  add_index "tickets", ["stage_id"], :name => "index_tickets_on_stage_id"
  add_index "tickets", ["state_id"], :name => "index_tickets_on_state_id"
  add_index "tickets", ["ticket_type_id"], :name => "index_tickets_on_ticket_type_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["id"], :name => "index_users_on_id"
  add_index "users", ["role_id"], :name => "index_users_on_role_id"

end
