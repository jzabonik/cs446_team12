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

ActiveRecord::Schema.define(version: 20140425075035) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pokemons", force: true do |t|
    t.string   "name"
    t.string   "type_one"
    t.string   "type_two"
    t.string   "image_url"
    t.integer  "pokedex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainer_pokemons", force: true do |t|
    t.integer  "pokemon_id"
    t.integer  "trainer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trainer_pokemons", ["pokemon_id"], name: "index_trainer_pokemons_on_pokemon_id"
  add_index "trainer_pokemons", ["trainer_id"], name: "index_trainer_pokemons_on_trainer_id"

  create_table "trainers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "trainers", ["email"], name: "index_trainers_on_email", unique: true
  add_index "trainers", ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true

end
