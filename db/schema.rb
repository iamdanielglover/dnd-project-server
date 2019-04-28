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

ActiveRecord::Schema.define(version: 2019_04_24_183708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_proficiencies", force: :cascade do |t|
    t.integer "character_id"
    t.integer "proficiency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "klass_id"
    t.integer "race_id"
    t.integer "armor_class"
    t.integer "initiative"
    t.integer "speed"
    t.string "alignment"
    t.integer "level"
    t.integer "experience"
    t.integer "proficiency_bonus"
    t.integer "max_hp"
    t.integer "current_hp"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.integer "hit_die"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proficiencies", force: :cascade do |t|
    t.string "name"
    t.string "mod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.integer "speed"
    t.integer "strength_bonus"
    t.integer "dexterity_bonus"
    t.integer "constitution_bonus"
    t.integer "intelligence_bonus"
    t.integer "wisdom_bonus"
    t.integer "charisma_bonus"
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
