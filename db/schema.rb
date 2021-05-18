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

ActiveRecord::Schema.define(version: 2021_05_18_013147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string "top_wood", default: "maple"
    t.string "back_wood", default: "mahogany"
    t.string "body_type", default: "custom 24 double cut"
    t.string "construction", default: "set neck"
    t.string "weight_relief_type", default: "none"
    t.string "binding", default: "faux"
    t.string "strap_button_type", default: "standard"
    t.string "finish_type", default: "gloss nitrocellulose"
    t.bigint "guitar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guitar_id"], name: "index_bodies_on_guitar_id"
  end

  create_table "bridges", force: :cascade do |t|
    t.string "name", default: "PRS Patented Tremolo, Gen III"
    t.string "brand", default: "paul reed smith"
    t.string "material", default: "steel and brass"
    t.string "bridge_type", default: "tremolo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bridges_guitars", id: false, force: :cascade do |t|
    t.bigint "guitar_id", null: false
    t.bigint "bridge_id", null: false
    t.index ["bridge_id"], name: "index_bridges_guitars_on_bridge_id"
    t.index ["guitar_id"], name: "index_bridges_guitars_on_guitar_id"
  end

  create_table "electronic_spec_lists", force: :cascade do |t|
    t.string "switch_type", default: "toggle"
    t.string "electronic_list", default: "1 volume 1 tone 1 selector switch"
    t.string "capacitor_values", default: "0.022µF"
    t.string "potentiometer_values", default: "500k"
    t.bigint "guitar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guitar_id"], name: "index_electronic_spec_lists_on_guitar_id"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "brand", default: "paul reed smith"
    t.string "model", default: "custom 24"
    t.float "weight", default: 9.0
    t.integer "string_number", default: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guitars_pickups", id: false, force: :cascade do |t|
    t.bigint "guitar_id", null: false
    t.bigint "pickup_id", null: false
    t.index ["guitar_id"], name: "index_guitars_pickups_on_guitar_id"
    t.index ["pickup_id"], name: "index_guitars_pickups_on_pickup_id"
  end

  create_table "guitars_tuners", id: false, force: :cascade do |t|
    t.bigint "guitar_id", null: false
    t.bigint "tuner_id", null: false
    t.index ["guitar_id"], name: "index_guitars_tuners_on_guitar_id"
    t.index ["tuner_id"], name: "index_guitars_tuners_on_tuner_id"
  end

  create_table "necks", force: :cascade do |t|
    t.string "fretboard_wood", default: "rosewood"
    t.string "neck_wood", default: "mahogany"
    t.integer "headstock_angle", default: 10
    t.string "construction", default: "one piece"
    t.string "inlay_style", default: "prs birds"
    t.string "side_inlay_style", default: "dots"
    t.bigint "guitar_id", null: false
    t.string "fret_material", default: "nickel"
    t.float "scale_length", default: 25.0
    t.float "fretboard_radius", default: 10.0
    t.integer "fret_number", default: 22
    t.float "width_first_fret", default: 1.65
    t.float "width_twelfth_fret", default: 2.06
    t.float "depth_first_fret", default: 0.87
    t.float "depth_twelfth_fret", default: 0.95
    t.string "neck_profile", default: "prs wide thin"
    t.string "truss_rod_type", default: "dual action"
    t.string "finish_type", default: "gloss polyurethane"
    t.string "binding", default: "none"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guitar_id"], name: "index_necks_on_guitar_id"
  end

  create_table "pickups", force: :cascade do |t|
    t.string "name", default: "dragon ii"
    t.string "brand", default: "paul reed smith"
    t.string "position", default: "bridge"
    t.string "dc_resistance", default: "12k"
    t.string "magnet_type", default: "alnico 4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tuners", force: :cascade do |t|
    t.string "name", default: "classic closed guitar tuning machines"
    t.string "brand", default: "hipshot"
    t.string "material", default: "unspecified"
    t.boolean "locking_mechanism", default: false
    t.float "weight", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bodies", "guitars"
  add_foreign_key "electronic_spec_lists", "guitars"
  add_foreign_key "necks", "guitars"
end
