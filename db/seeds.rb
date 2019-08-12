# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rs1 = RailwayStation.create(title: 'Moscow')
rs2 = RailwayStation.create(title: 'Omsk')
rs3 = RailwayStation.create(title: 'Minsk')
rs4 = RailwayStation.create(title: 'Riga')

train1 = Train.create(number: 123, current_station: rs1)
train2 = Train.create(number: 456, current_station: rs1)

train3 = Train.create(number: 777, current_station: rs2)
train4 = Train.create(number: 888, current_station: rs2)

route1 = Route.create(name: 'Moscow - Omsk')
route2 = Route.create(name: 'Minsk - Riga')

rs1.routes << route1
rs3.routes << route2
