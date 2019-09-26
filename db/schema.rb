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

ActiveRecord::Schema.define(version: 2019_09_26_002445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "goal_resources", force: :cascade do |t|
    t.bigint "goal_id"
    t.bigint "resource_id"
    t.index ["goal_id"], name: "index_goal_resources_on_goal_id"
    t.index ["resource_id"], name: "index_goal_resources_on_resource_id"
  end

  create_table "goals", force: :cascade do |t|
    t.date "start_time"
    t.date "end_time"
    t.integer "mentor_id"
    t.bigint "user_id"
    t.bigint "milestone_id"
    t.index ["milestone_id"], name: "index_goals_on_milestone_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "key_results", force: :cascade do |t|
    t.string "description"
    t.bigint "objective_id"
    t.boolean "completed", default: false
    t.index ["objective_id"], name: "index_key_results_on_objective_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "level"
    t.string "description"
    t.bigint "track_id"
    t.index ["track_id"], name: "index_milestones_on_track_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.string "description"
    t.bigint "goal_id"
    t.index ["goal_id"], name: "index_objectives_on_goal_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
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
    t.string "google_token"
    t.string "google_refresh_token"
    t.string "image_url"
  end

  add_foreign_key "goal_resources", "goals"
  add_foreign_key "goal_resources", "resources"
  add_foreign_key "goals", "milestones"
  add_foreign_key "goals", "users"
  add_foreign_key "goals", "users", column: "mentor_id"
  add_foreign_key "key_results", "objectives"
  add_foreign_key "milestones", "tracks"
  add_foreign_key "objectives", "goals"
  add_foreign_key "tracks", "categories"
end
