player_params = {login: 'mpandres',
                 password: 'password',
                 role: 'player',
                 name: 'Mireya Andres',
                 school: 'UP Diliman',
                 experience: 2,
                 level: 1}

translator_params = {login: 'nmcalabroso',
                     password: 'password',
                     role: 'translator',
                     name: 'Neil Calabroso',
                     school: 'Ateneo De Manila University',
                     experience: 2,
                     level: 1}

g_1 = {name: "a"}
g_2 = {name: "b"}
g_3 = {name: "c"}
g_4 = {name: "d"}
g_5 = {name: "e"}
g_6 = {name: "f"}
g_7 = {name: "g"}
g_8 = {name: "h"}
g_9 = {name: "i"}
g_10 = {name: "j"}
g_11 = {name: "k"}
g_12 = {name: "l"}
g_13 = {name: "m"}
g_14 = {name: "n"}
g_15 = {name: "o"}
g_16 = {name: "p"}
g_17 = {name: "q"}
g_18 = {name: "r"}
g_19 = {name: "s"}
g_20 = {name: "t"}
g_21 = {name: "u"}
g_22 = {name: "v"}
g_23 = {name: "w"}
g_24 = {name: "x"}
g_25 = {name: "y"}
g_26 = {name: "z"}
g_27 = {name: "Are"}
g_28 = {name: "Good"}
g_29 = {name: "Hello"}
g_30 = {name: "Monkey"}
g_31 = {name: "Nice"}
g_32 = {name: "Orange"}
g_33 = {name: "White"}
g_34 = {name: "Yes"}
g_35 = {name: "You"}
g_36 = {name: "afternoon"}
g_37 = {name: "bathroom"}
g_38 = {name: "beautiful"}


item_1 = {phrase: "Hello", difficulty: 1}
item_2 = {phrase: "Excellence", difficulty: 1}
item_3 = {phrase: "School", difficulty: 1}
item_4 = {phrase: "Orange", difficulty: 2}
item_5 = {phrase: "White", difficulty: 2}
item_6 = {phrase: "Yes", difficulty: 2}

player = User.create(player_params)
translator = User.create(translator_params)

Gesture.create([g_1, g_2, g_3, g_4, g_5, g_6, g_7, g_8, g_9, g_10, g_11, g_12, g_13, g_14, g_15, g_16, g_17, g_18, g_19, g_20,
				g_21, g_22, g_23, g_24, g_25, g_26, g_27, g_28, g_29, g_30, g_31, g_32, g_33, g_34, g_35, g_36, g_37, g_38])
