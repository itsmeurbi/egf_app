# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_07_150140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "level"
    t.string "description"
    t.bigint "track_id"
    t.index ["track_id"], name: "index_milestones_on_track_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
    t.bigint "task_id"
    t.index ["task_id"], name: "index_resources_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "track_id"
    t.bigint "milestone_id"
    t.index ["milestone_id"], name: "index_tasks_on_milestone_id"
    t.index ["track_id"], name: "index_tasks_on_track_id"
  end

  create_table "tasks_users", force: :cascade do |t|
    t.boolean "accomplished", default: false
    t.bigint "user_id"
    t.bigint "task_id"
    t.index ["task_id"], name: "index_tasks_users_on_task_id"
    t.index ["user_id"], name: "index_tasks_users_on_user_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_tracks_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
  end

  add_foreign_key "milestones", "tracks"
  add_foreign_key "resources", "tasks"
  add_foreign_key "tasks", "milestones"
  add_foreign_key "tasks", "tracks"
  add_foreign_key "tasks_users", "tasks"
  add_foreign_key "tasks_users", "users"
  add_foreign_key "tracks", "categories"
end
