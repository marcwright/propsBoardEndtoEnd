# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prop.destroy_all

props = Prop.create([

	{ author: "Jojo" , recipient: "Marc" , reason: "getting rails together"},
	{ author: "Mer" , recipient: "Jen" , reason: "being the bomb and such for sure"},
	{ author: "T2" , recipient: "Matt" , reason: "turning on the light and bring TP"}

	]);