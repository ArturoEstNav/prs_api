puts 'Clear database'
Guitar.destroy_all

puts 'Create guitar instances'
Guitar.create(
    model: 'DW CE 24 “FLOYD”'
)

Guitar.create(
    model: 'MCCARTY 594 SINGLECUT'
)

Guitar.create(
    model: 'CUSTOM 24 PIEZO'
)

puts 'Create body instances'
Body.create(
    guitar_id: Guitar.first.id, 
    top_wood: "flamed maple",
    construction: "bolt on",
    finish_type: "matte nitrocellulose"
)

Body.create(
    guitar_id: (Guitar.first.id + 1),
    top_wood: "flamed maple",
    back_wood: "mahogany",
    body_type: "single cut mccarthy",
    finish_type: "gloss nitrocellulose"
)

Body.create(
    guitar_id: (Guitar.first.id + 2),
    finish_type: "gloss nitrocellulose"
)

puts 'Create neck instances'
Neck.create(
    guitar_id: Guitar.first.id, 
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
    guitar_id: (Guitar.first.id + 1),
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
    guitar_id: (Guitar.first.id + 2),
    fret_number: 24,
    neck_profile: "pattern thin",
    finish_type: "gloss nitrocellulose",
    binding: "none"
)

puts 'Create electronic_list instances'
ElectronicSpecList.create(
    guitar_id: Guitar.first.id,
    switch_type: "5 way blade",
    electronic_list: "Volume and Tone Control with 5-Way Blade Switch"
)

ElectronicSpecList.create(
    guitar_id: (Guitar.first.id + 1),
    switch_type: "3 way toggle",
    electronic_list: "Two Volume and Two Push/Pull Tone Controls with 3-Way Toggle Switch on Upper Bout"    
)

ElectronicSpecList.create(
    guitar_id: (Guitar.first.id + 2),
    switch_type: "5 way blade",
    electronic_list: "Volume and Tone Control with 5-Way Blade Switch and LR Baggs/PRS Piezo (3-way Selector and Blend Knob)",
    capacitor_values: "0.033µF"
)

puts 'Create bridge instances'
Bridge.create(
    name: "floyd rose 1000 tremolo",
    brand: "floyd rose",
    material: "steel",
    bridge_type: "floating tremolo"
)

Bridge.create(
    name: "original floyd rose tremolo",
    brand: "floyd rose",
    material: "hardenedsteel",
    bridge_type: "floating tremolo"
)

Bridge.create(
    name: "prs two-piece",
    brand: "paul reed smith",
    material: "cast zinc, brass saddles and aluminum tailpiece",
    bridge_type: "two piece stop tail"
)

Bridge.create(
    name: "prs patented tremolo, gen iii",
    brand: "paul reed smith",
    material: "brass",
    bridge_type: "vintage tremolo"
)

Bridge.create(
    name: "prs stoptail w/ brass inserts",
    brand: "paul reed smith",
    material: "aluminun and brass",
    bridge_type: "wraparound"
)

puts 'Create tuner instances'
Tuner.create(
    name: "prs low mass locking",
    brand: "paul reed smith",
    material: "brass and aluminum",
    locking_mechanism: true,
    weight: 0.08,
)

Tuner.create(
    name: "vintage style",
    brand: "paul reed smith",
    material: "brass and aluminum",
    locking_mechanism: false,
    weight: 0.0,
)

Tuner.create(
    name: "prs phase III locking",
    brand: "paul reed smith",
    material: "brass and aluminum",
    locking_mechanism: true,
    weight: 0.6375,
)

puts 'Create pickup instances'
Pickup.create(
    name: "dw tomahawk gen 2 humbucker pickup",
    brand: "mojo tone",
    position: "set",
    dc_resistance: "neck: 7.5k, bridge: 16k",
    magnet_type: "alnico 5"
)

Pickup.create(
    name: "58/15 lt +",
    brand: "paul reed smith",
    position: "set",
    dc_resistance: "neck: 8.15k, bridge: 9.03k",
    magnet_type: "alnico"
)

Pickup.create(
    name: "85/15",
    brand: "paul reed smith",
    position: "set",
    dc_resistance: "neck: 8.15k, bridge: 9.03k",
    magnet_type: "alnico"
)

puts 'Create finish instances'
Finish.create(
    back_color: "black",
    base_color: "red",
    binding: "faux",
    finish_name: "waring burst",
    clearcoat_type: "nitrocellulose matte",
    matching_heastock: false
)

Finish.create(
    base_color: "orange",
    binding: "faux",
    finish_name: "mccarty sunburst",
    clearcoat_type: "nitrocellulose gloss",
    matching_heastock: false
)

Finish.create()

puts 'Create guitar finish connection instances'
GuitarFinish.create(
    guitar_id: Guitar.first.id, 
    finish_id: Finish.first.id
)

GuitarFinish.create(
    guitar_id: (Guitar.first.id + 1), 
    finish_id: (Finish.first.id + 1)
)

GuitarFinish.create(
    guitar_id: (Guitar.first.id + 2), 
    finish_id: (Finish.first.id + 2)
)

puts 'Create guitar bridge connection instances'
GuitarBridge.create(
    guitar_id: Guitar.first.id, 
    bridge_id: Bridge.first.id
)

GuitarBridge.create(
    guitar_id: (Guitar.first.id + 1), 
    bridge_id: (Bridge.first.id + 1)
)

GuitarBridge.create(
    guitar_id: (Guitar.first.id + 2), 
    bridge_id: (Bridge.first.id + 2)
)

puts 'Create guitar pickup connection instances'
GuitarPickup.create(
    guitar_id: Guitar.first.id, 
    pickup_id: Pickup.first.id
)

GuitarPickup.create(
    guitar_id: (Guitar.first.id + 1), 
    pickup_id: (Pickup.first.id + 1)
)

GuitarPickup.create(
    guitar_id: (Guitar.first.id + 2), 
    pickup_id: (Pickup.first.id + 2)
)

puts 'Create guitar pickup connection instances'
GuitarTuner.create(
    guitar_id: Guitar.first.id, 
    tuner_id: Tuner.first.id
)

GuitarTuner.create(
    guitar_id: (Guitar.first.id + 1), 
    tuner_id: (Tuner.first.id + 1)
)

GuitarTuner.create(
    guitar_id: (Guitar.first.id + 2), 
    tuner_id: (Tuner.first.id + 2)
)
