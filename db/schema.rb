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

ActiveRecord::Schema.define(version: 2020_07_27_185009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.string "position"
    t.string "secondary_position"
    t.integer "default_price", default: 0
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
    t.integer "user_price"
    t.string "status"
    t.string "player_name"
    t.string "player_position"
    t.string "player_team"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "budget", default: 200
    t.integer "num_qb", default: 1
    t.integer "num_rb", default: 2
    t.integer "num_wr", default: 2
    t.integer "num_te", default: 1
    t.integer "num_flex", default: 1
    t.integer "num_k", default: 1
    t.integer "num_def", default: 1
    t.integer "num_superflex", default: 0
    t.integer "num_bench", default: 4
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "fav_team"
  end

end
