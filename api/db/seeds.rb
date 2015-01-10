# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

player = User.create(player_params)
translator = User.create(translator_params)

item_1 = {phrase: "Spell out 'Hello'", difficulty: 1}
item_2 = {phrase: "Spell out 'Excellence", difficulty: 1}
item_3 = {phrase: "Spell out 'School", difficulty: 1}
item_4 = {phrase: "Demonstrate the sign for the word 'Orange'", difficulty: 2}
item_5 = {phrase: "Demonstrate the sign for the word 'White'", difficulty: 2}
item_5 = {phrase: "Demonstrate the sign for the word 'Yes'", difficulty: 2}