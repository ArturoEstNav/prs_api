# puts 'Clear database'

# Body.destroy_all
# Bridge.destroy_all
# ElectronicsList.destroy_all
# Guitar.destroy_all
# Neck.destroy_all
# Pickup.destroy_all
# Tuner.destroy_all

puts 'Create guitar instances'
Guitar.create(
    model: 'DW CE 24 “FLOYD”'
)
# Guitar id #1

Guitar.create(
    model: 'MCCARTY 594 SINGLECUT'
)
# Guitar id #2

Guitar.create(
    model: 'CUSTOM 24 PIEZO'
)
# Guitar id #3

puts 'Create body instances'

Body.create(
    guitar_id: 1, 
    top_wood: "flamed maple",
    construction: "bolt on",
    finish_type: "matte nitrocellulose"
)

Body.create(
    guitar_id: 2,
    top_wood: "flamed maple",
    back_wood: "mahogany",
    body_type: "single cut mccarthy",
    finish_type: "gloss nitrocellulose"
)

Body.create(
    guitar_id: 3,
    finish_type: "gloss nitrocellulose"
)

puts 'Create neck instances'

Neck.create(
    guitar_id: 1, 
    fretboard_wood: "maple",
    neck_wood: "maple",
    headstock_angle: 10,
    construction: "one piece",
    inlay_style: "black birds",
    side_inlay_style: "dots",
    fret_number: 24,
    neck_profile: "modified pattern thin",
    finish_type: "matte nitrocellulose"
)

Neck.create(
    guitar_id: 2,
    headstock_angle: 10,
    construction: "one piece",
    inlay_style: "old school birds",
    side_inlay_style: "dots",
    fret_material: "nickel",
    scale_length: 24.594,
    fret_number: 22,
    width_first_fret: 1.68,
    width_twelfth_fret: 0.0,
    depth_first_fret: 0.89,
    depth_twelfth_fret: 0.0,
    neck_profile: "pattern vintage",
    binding: "faux bone binding"
)

Neck.create(
    guitar_id: 3,
    fret_number: 24,
    neck_profile: "pattern thin",
    finish_type: "gloss nitrocellulose",
    binding: "none"
)

puts 'Create electronic_list instances'

ElectronicSpecList.create(
    guitar_id: 1,
    switch_type: "5 way blade",
    electronic_list: "Volume and Tone Control with 5-Way Blade Switch"
)

ElectronicSpecList.create(
    guitar_id: 2,
    switch_type: "3 way toggle",
    electronic_list: "Two Volume and Two Push/Pull Tone Controls with 3-Way Toggle Switch on Upper Bout"    
)

ElectronicSpecList.create(
    guitar_id: 3,
    switch_type: "5 way blade",
    electronic_list: "Volume and Tone Control with 5-Way Blade Switch and LR Baggs/PRS Piezo (3-way Selector and Blend Knob)",
    capacitor_values: "0.033µF"
)

# puts 'Create bridge instances'

# Bridge.create(
#     name: "floyd rose 1000 tremolo",
#     brand: "floyd rose",
#     material: "steel",
#     bridge_type: "floating tremolo"
# )

# Bridge.create(
#     name: "	prs two-piece",
#     brand: "paul reed smith",
#     material: "cast zinc, brass saddles and aluminum tailpiece",
#     bridge_type: "wraparound"
# )

# Bridge.create(
#     name: "PRS Patented Tremolo, Gen III",
#     brand: "paul reed smith",
#     material: "brass",
#     bridge_type: "vintage tremolo"
# )

#   create_table "bridges_guitars", id: false, force: :cascade do |t|
#     t.bigint "guitar_id", null: false
#     t.bigint "bridge_id", null: false
#     t.index ["bridge_id"], name: "index_bridges_guitars_on_bridge_id"
#     t.index ["guitar_id"], name: "index_bridges_guitars_on_guitar_id"
#   end


#   create_table "guitars", force: :cascade do |t|
#     t.string "brand", default: "paul reed smith"
#     t.string "model_name", default: "custom 24"
#     t.float "weight", default: 9.0
#     t.integer "string_number", default: 6
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "guitars_pickups", id: false, force: :cascade do |t|
#     t.bigint "guitar_id", null: false
#     t.bigint "pickup_id", null: false
#     t.index ["guitar_id"], name: "index_guitars_pickups_on_guitar_id"
#     t.index ["pickup_id"], name: "index_guitars_pickups_on_pickup_id"
#   end

#   create_table "guitars_tuners", id: false, force: :cascade do |t|
#     t.bigint "guitar_id", null: false
#     t.bigint "tuner_id", null: false
#     t.index ["guitar_id"], name: "index_guitars_tuners_on_guitar_id"
#     t.index ["tuner_id"], name: "index_guitars_tuners_on_tuner_id"
#   end



#   create_table "pickups", force: :cascade do |t|
#     t.string "name", default: "dragon ii"
#     t.string "brand", default: "paul reed smith"
#     t.string "position", default: "bridge"
#     t.string "dc_resistance", default: "12k"
#     t.string "magnet_type", default: "alnico 4"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "tuners", force: :cascade do |t|
#     t.string "name", default: "classic closed guitar tuning machines"
#     t.string "brand", default: "hipshot"
#     t.string "material", default: "unspecified"
#     t.boolean "locking_mechanism", default: false
#     t.float "weight", default: 0.0
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end