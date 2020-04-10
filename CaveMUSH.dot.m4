graph CaveMUSH {
        define(`graph', `subgraph')
        blocked_path[label="Path\n(blocked)" shape="diamond"]

        include(`house_0.dot')
        back_yard[label="back yard"]
        side_yard[label="side yard"]
        back_yard -- garden -- further_garden
        back_yard -- side_yard -- front_yard -- house

        include(`redwolf_house.dot')
        RedWolf_front_yard[label="Front Yard"]
        RedWolf_back_yard[label="Back Yard"]
        arbor[label="arbor\n(locked gate)" shape="diamond"]
        Pasture[shape="box"]
        Storage[shape="box"]

        RedWolf_front_yard -- "Front Porch"
        RedWolf_front_yard -- Pasture
        RedWolf_front_yard -- "East Side Yard"
        RedWolf_front_yard -- "West of the House"
        RedWolf_back_yard -- "Back Porch\n(west)"
        RedWolf_back_yard -- arbor
        "East Side Yard" -- "East Side Porch\n(back)"
        "East Side Yard" -- Basement
        "West of the House" -- "Slave Quarters:\nMain Room" -- Storage
        "West of the House" -- "West Side Porch\n(front)"

        excavated_room[shape="box"]

        further_garden -- wooded_path_2

        front_yard -- blocked_path
        wooded_path_2 -- creek_bank -- creek -- creek_pool -- clay_tunnel -- deeper_tunnel -- excavated_room

        "Wooded Path" -- "Vertical Shaft"
        "Wooded Path" -- back_yard

        "Vertical Shaft" -- "Dondar's Tunnel"

        "Dondar's Tunnel" -- "Cave Nexus"
        "Dondar's Tunnel" -- "Path of Puddles"
        "Dondar's Tunnel" -- "Dungeon Entrance"

        "Dungeon Entrance" -- "Marble Staircase" -- "Russell Jones Memorial Hallway"

        "Back Room"[shape="box"]
        "Russell Jones Memorial Hallway" -- "Gift Shop" -- "Back Room"
        "Russell Jones Memorial Hallway" -- "Roomy Room" -- Tunnel -- "Moony Room" -- "Bread Room"
        "Russell Jones Memorial Hallway" -- "Ladder Room"
        "Russell Jones Memorial Hallway" -- "Professor Plastic's Office"
        "Professor Plastic's Office"[shape="box"]

        "Ladder Room" -- "Syrup Room"
        "Ladder Room" -- "Funk Room"
        "Ladder Room" -- "Rihanna Room"
        "Ladder Room" -- "Smoke Room"
        "Ladder Room" -- "Ghost Room"
        "Syrup Room"[shape="box"]
        "Funk Room"[shape="box"]
        "Rihanna Room"[shape="box"]
        "Smoke Room"[shape="box"]
        "Ghost Room"[shape="box"]

        "Bread Room" -- "Abandoned Strip Mall"
        "Bread Room" -- "Regret Room"
        "Regret Room"[shape="box"]

        "Abandoned Strip Mall" -- "Golem Store"
        "Abandoned Strip Mall" -- "Commemorative Plate Store"
        "Abandoned Strip Mall" -- "Licker Store"
        "Abandoned Strip Mall" -- Haberdashery
        "Abandoned Strip Mall" -- "Chandelier Room" -- chandelier_room_down
        "Golem Store"[shape="box"]
        "Commemorative Plate Store"[shape="box"]
        "Licker Store"[shape="box"]
        Haberdashery[shape="box"]
        chandelier_room_down[label="Down\n(blocked)" shape="diamond"]

        "Cave Nexus" -- "Visitor's Center Lobby"
        "Cave Nexus" -- "Tunnel #847"
        "Cave Nexus" -- "Commerce Cave"
        "Cave Nexus" -- "Underworld Entrance"

        "Visitor's Center Lobby" -- "Help Center"
        "Visitor's Center Lobby" -- "The Cave Museum"
        "Visitor's Center Lobby" -- "Cave for the Homeless"
        "Help Center"[shape="box"]
        "Cave for the Homeless"[shape="box"]

        "Tunnel #847" -- "Residence Hub"
        "Tunnel #847" -- "Rocky Platform" -- "Underground River Source" -- "Underground River\n(upstream)" -- "Underground River" -- "Underground River\n(downstream)"
        "Tunnel #847" -- "Marble Stairway"
        "Tunnel #847" -- "Great Earthen Highway"

        "Great Earthen Highway" -- "Sentry Post"
        "Great Earthen Highway" -- "Great Highway"
        "Sentry Post"[shape="box"]

        "Great Highway" -- "Felcher's Game Room" -- "Furry Alcove"
        "Great Highway" -- "Inn Entryway"
        "Great Highway" -- "Inn Lobby"
        #"Great Highway" --

        "Inn Lobby" -- "Common Room"
        "Inn Lobby" -- Inn_staircase
        Inn_staircase[label="Staircase"]

        Inn_staircase -- Inn_upstairs_hallway
        #Inn_staircase --
        Inn_upstairs_hallway[label="Hallway"]
        Inn_upstairs_hallway -- "NRG's (not so secret) hideout"
        #Inn_hallway --

        "NRG's (not so secret) hideout" -- airport
        "NRG's (not so secret) hideout" -- "A ladder"
        #"NRG's (not so secret) hideout" --
        #"NRG's (not so secret) hideout" --
        #"NRG's (not so secret) hideout" --

        include(`nrgland.dot')

        "Sleep Vision" -- Church

        "Common Room" -- Bar
        "Common Room" -- "Dark Corner"
        Bar[shape="box"]
        "Dark Corner"[shape="box"]

        "Underground River\n(downstream)" -- "Underground Riverbank"
        "Underground River\n(downstream)" -- "Underground River\n(further downstream)"

        "Underground River\n(further downstream)" -- "Underground Lake"

        "Underground Lake" -- "Lake Shore\n(left)"
        "Underground Lake" -- "Underground Lake\n(deep)"
        "Underground Lake" -- "Lake Shore\n(right)" -- "Small Tunnel\n(up)" -- "Small Tunnel\n(down)" -- "Small Tunnel\n(further down)"
        "Underground Lake\n(deep)"[shape="box"]

        "Lake Shore\n(left)" -- "Square Tunnel" -- "Village Entrance"
        "Lake Shore\n(left)" -- Dock

        "Village Entrance" -- "Village Center"
        "Village Entrance" -- "Marble Stairway"

        "Village Center" -- "Village Waterworks" -- "Undergrond Cabin"
        "Village Center" -- "Opolo's House"
        "Undergrond Cabin"[shape="box"]
        "Opolo's House"[shape="box"]

        "Small Tunnel\n(further down)" -- "Carved Passage\n(up)" -- "Carved Passage\n(down)" -- "Dusty Passage" -- "Ancient Crypt"
        "Small Tunnel\n(further down)" -- "Widening in the Tunnel" -- "Wide Tunnel\n(up)" -- "Bend in Tunnel" -- "Wide Tunnel\n(down)" -- "Torch Chamber"
        "Ancient Crypt"[shape="box"]

        "Torch Chamber" -- "Rocky Passage"
        "Torch Chamber" -- "Smooth Path" -- "River Mouth"
        "Torch Chamber" -- "Rough Passage" -- "Down Passage\n(blocked)"
        "Rocky Passage"[shape="box"]
        "Down Passage\n(blocked)"[shape="diamond"]

        "River Mouth" -- Path
        "River Mouth" -- "Down River" -- "River Path" -- "Rocky Path\n(down)" -- "Rocky Path\n(up)" -- "Outside of Tower" -- "Thoran's Living Room"
        Path[shape="box"]

        include(`thoran_tower.dot')
        "Residence Hub" -- "Residence Cave - Block 1"
        "Residence Hub" -- "Residence Cave - Block 2"

        "The Cave Museum" -- "Hall of Curiosities"
        "The Cave Museum" -- "CaveMUSH Library"
        "The Cave Museum" -- "CaveMUSH Art Gallery Hallway"
        "The Cave Museum" -- "Hall of Records" -- "CaveMUSH 20th Anniversary Lounge"

        "Hall of Curiosities" -- "Mathematical Toys"
        "Hall of Curiosities" -- "Sensor Toys"
        "Hall of Curiosities" -- "Formatting Toys"
        "Hall of Curiosities" -- Games
        "Hall of Curiosities" -- "Language Toys" -- "Generator Room"
        "Mathematical Toys"[shape="box"]
        "Sensor Toys"[shape="box"]
        "Formatting Toys"[shape="box"]
        Games[shape="box"]
        "Generator Room"[shape="box"]

        "CaveMUSH Library" -- "History Section"
        "CaveMUSH Library" -- "Fiction Section"
        "CaveMUSH Library" -- "Instructional Section"
        "History Section"[shape="box"]
        "Fiction Section"[shape="box"]
        "Instructional Section"[shape="box"]

        "CaveMUSH Art Gallery Hallway" -- "Modern Art" -- "Abstract Art"
        "CaveMUSH Art Gallery Hallway" -- "Fine Art"
        "CaveMUSH Art Gallery Hallway" -- "Pop Art"
        "CaveMUSH Art Gallery Hallway" -- "MUSH Art" -- "Illustration Art"
        "Abstract Art"[shape="box"]
        "Fine Art"[shape="box"]
        "Illustration Art"[shape="box"]

        "Pop Art" -- Holidays
        "Pop Art" -- Nudes
        Holidays[shape="box"]
        Nudes[shape="box"]

        "Path of Puddles" -- "Raining Tunnel"
        "Path of Puddles" -- "Caves of Dennis" -- "Ruby Stand"
        "Ruby Stand"[shape="box"]

        "Raining Tunnel" -- "Laddered Climb"
        "Raining Tunnel" -- "Underground Pond"

        "Underground Pond" -- "Forked Path" -- "Branching into Darkness"
        "Branching into Darkness"[shape="box"]

        "Laddered Climb" -- Sewer
        "Laddered Climb" -- "Highway"

        Sewer -- sewer_south
        Sewer -- "Northern Sewer Tunnel"
        Sewer -- "Parking Lot"
        "Northern Sewer Tunnel"[shape="box"]
        sewer_south[label="South\n(nothing interesting)" shape="diamond"]

        "Parking Lot" -- Highway
        "Parking Lot" -- Church

        Church -- Pew
        Pew[shape="box"]

        "Highway" -- "Granger Subdivision"
        "Highway" -- "Teedle Country"
        "Highway" -- "Strange HW"
        "Highway" -- "Hanny Suburbs"
        "Highway" -- "Sarrow Suburbs"
        "Highway" -- "Franklin City"

        "Wooded Path" -- "Old Dirt Road" -- "Muddy Track" -- "Dirt Track"
        "Bluebell woodland" -- "Dirt Track"
        "Bluebell woodland" -- "Woodland Path"
        "Bluebell woodland" -- Clearing

        Clearing[shape="box"]

        "Woodland Path" -- "Edge of the Woods" -- RedWolf_back_yard

        greenhouse[shape="box"]
}
