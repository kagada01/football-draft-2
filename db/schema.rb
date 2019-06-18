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

ActiveRecord::Schema.define(version: 2019_06_18_183345) do

  create_table "def_players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order"
    t.integer "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "off_players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.string "college"
    t.boolean "available"
    t.string "nfl_team"
    t.string "type"
    t.string "position"
    t.integer "sacks"
    t.integer "def_interceptions"
    t.integer "tackles"
    t.integer "fumble_rec"
    t.integer "tds"
    t.integer "rush_yds"
    t.integer "receptions"
    t.integer "pass_yds"
    t.integer "off_int"
    t.integer "fumbles"
    t.integer "my_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
