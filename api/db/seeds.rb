player_params = {login: 'mpandres',
                 password: 'password',
                 role: 'player',
                 name: 'Mireya Andres',
                 school: 'UP Diliman'}

translator_params = {login: 'nmcalabroso',
                     password: 'password',
                     role: 'translator',
                     name: 'Neil Calabroso',
                     school: 'Ateneo De Manila University'
                     }

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
g_20 = {name: "u"}
g_21 = {name: "v"}
g_22 = {name: "w"}
g_23 = {name: "x"}
g_24 = {name: "y"}
g_25 = {name: "z"}
g_26 = {name: "afternoon"}
g_27 = {name: "bathroom"}
g_28 = {name: "beautiful"}
g_29 = {name: "good"}
g_30 = {name: "hello"}
g_31 = {name: "monkey"}
g_32 = {name: "nice"}
g_33 = {name: "orange"}
g_34 = {name: "white"}
g_35 = {name: "yes"}
g_36 = {name: "you"}

player = User.create(player_params)
translator = User.create(translator_params)
Gestures.create(g_1, g_2, g_3, g_4, g_5, g_6,)