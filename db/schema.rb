# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_045707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string "top_wood", default: "maple"
    t.string "back_wood", default: "mahogany"
    t.string "construction", default: "set neck"
    t.string "weight_relief_type", default: "none"
    t.string "binding", default: "faux"
    t.string "strap_button_type", default: "standard"
    t.string "finish_type", default: "gloss polyurethane"
    t.bigint "guitar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guitar_id"], name: "index_bodies_on_guitar_id"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "brand"
    t.float "weight"
    t.integer "string_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "necks", force: :cascade do |t|
    t.string "fretboard_wood", default: "rosewood"
    t.string "neck_wood", default: "mahogany"
    t.integer "headstock_angle", default: 10
    t.string "construction", default: "set neck"
    t.string "inlay_style", default: "prs birds"
    t.string "side_inlay_style", default: "dots"
    t.bigint "guitar_id", null: false
    t.string "fret_material", default: "nickel"
    t.float "scale_length", default: 25.0
    t.float "fretboard_radius", default: 10.0
    t.integer "fret_number", default: 22
    t.float "width_first_fret", default: 1.6875
    t.float "width_twelfth_fret", default: 1.96875
    t.float "depth_first_fret", default: 0.84375
    t.float "depth_twelfth_fret", default: 0.0
    t.string "neck_profile", default: "prs wide thin"
    t.string "truss_rod_type", default: "dual action"
    t.string "finish_type", default: "gloss polyurethane"
    t.string "binding", default: "none"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guitar_id"], name: "index_necks_on_guitar_id"
  end

  add_foreign_key "bodies", "guitars"
  add_foreign_key "necks", "guitars"
end
