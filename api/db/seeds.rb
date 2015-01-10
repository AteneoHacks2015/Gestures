# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_params = {login: 'mpandres',
               password: 'password',
               role: 'player',
               name: 'Mireya Andres',
               school: 'UP Diliman'}

user = User.create(user_params)
