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

ActiveRecord::Schema.define(version: 20160712200022) do

  create_table "coaches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.string "level"
    t.date "birthday"
    t.text "description", limit: 65535
    t.string "phone"
    t.string "email"
    t.integer "zip"
    t.string "nationality"
    t.integer "gender"
    t.string "avatar"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_coaches_on_team_id", using: :btree
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.integer "position"
    t.date "birthday"
    t.float "height", limit: 24
    t.float "weight", limit: 24
    t.text "description", limit: 65535
    t.string "phone"
    t.string "email"
    t.integer "zip"
    t.string "nationality"
    t.integer "gender"
    t.string "avatar"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "category"
    t.string "club"
    t.string "avatar"
    t.string "practice_address"
    t.string "game_address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
