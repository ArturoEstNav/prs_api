puts 'Clear database'

Body.destroy_all
Bridge.destroy_all
ElectronicsList.destroy_all
Guitar.destroy_all
Neck.destroy_all
Pickup.destroy_all
Tuner.destroy_all

puts 'Create guitar instances'
Guitar.create(
    model_name: 'DW CE 24 “FLOYD”'
)

Guitar.create(
    model_name: 'MCCARTY 594 SINGLECUT'
)

Guitar.create(
    model_name: 'CUSTOM 24 PIEZO'
)

# puts 'Create guitar instances'
# create_table "bodies", force: :cascade do |t|
#     t.string "top_wood", default: "maple"
#     t.string "back_wood", default: "mahogany"
#     t.string "construction", default: "set neck"
#     t.string "weight_relief_type", default: "none"
#     t.string "binding", default: "faux"
#     t.string "strap_button_type", default: "standard"
#     t.string "finish_type", default: "gloss polyurethane"
#     t.bigint "guitar_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["guitar_id"], name: "index_bodies_on_guitar_id"
 

#   create_table "bridges", force: :cascade do |t|
#     t.string "name", default: "PRS Patented Tremolo, Gen III"
#     t.string "brand", default: "paul reed smith"
#     t.string "material", default: "steel and brass"
#     t.string "type", default: "tremolo"
#     t.bigint "body_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["body_id"], name: "index_bridges_on_body_id"
 

#   create_table "electronics_lists", force: :cascade do |t|
#     t.string "switch_type", default: "toggle"
#     t.string "electronic_list", default: "1 volume 1 tone 1 selector switch"
#     t.string "capacitor_values", default: "0.022µF"
#     t.string "potentiometer_values", default: "500k"
#     t.bigint "body_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["body_id"], name: "index_electronics_lists_on_body_id"
 

  
 

#   create_table "necks", force: :cascade do |t|
#     t.string "fretboard_wood", default: "rosewood"
#     t.string "neck_wood", default: "mahogany"
#     t.integer "headstock_angle", default: 10
#     t.string "construction", default: "one piece"
#     t.string "inlay_style", default: "prs birds"
#     t.string "side_inlay_style", default: "dots"
#     t.bigint "guitar_id", null: false
#     t.string "fret_material", default: "nickel"
#     t.float "scale_length", default: 25.0
#     t.float "fretboard_radius", default: 10.0
#     t.integer "fret_number", default: 22
#     t.float "width_first_fret", default: 1.65
#     t.float "width_twelfth_fret", default: 2.06
#     t.float "depth_first_fret", default: 0.87
#     t.float "depth_twelfth_fret", default: 0.95
#     t.string "neck_profile", default: "prs wide thin"
#     t.string "truss_rod_type", default: "dual action"
#     t.string "finish_type", default: "gloss polyurethane"
#     t.string "binding", default: "none"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["guitar_id"], name: "index_necks_on_guitar_id"
 

#   create_table "pickups", force: :cascade do |t|
#     t.string "name", default: "dragon ii"
#     t.string "brand", default: "paul reed smith"
#     t.string "position", default: "bridge"
#     t.string "dc_resistance", default: "12k"
#     t.string "magnet_type", default: "alnico 4"
#     t.bigint "electronics_list_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["electronics_list_id"], name: "index_pickups_on_electronics_list_id"
 

#   create_table "tuners", force: :cascade do |t|
#     t.string "name", default: "classic closed guitar tuning machines"
#     t.string "brand", default: "hipshot"
#     t.string "material", default: "unspecified"
#     t.boolean "locking_mechanism", default: false
#     t.float "weight", default: 0.0
#     t.bigint "neck_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["neck_id"], name: "index_tuners_on_neck_id"
 
