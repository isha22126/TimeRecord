# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Room.create(name: "職員室")
r2 = Room.create(name: "商業センター")
r3 = Room.create(name: "進路指導室")

t1 = Teacher.create(name: "吉田", mail: "yoshida@xxx.com", pw: "yoshida", kana: "よしだ", room_id: r1.id)
t2 = Teacher.create(name: "永田", mail: "nagata@xxx.com",  pw: "nagata",  kana: "ながた", room_id: r2.id)
