# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: "General Discussion")
Category.create(title: "Stark")
Category.create(title: "Baratheon")
Category.create(title: "Targaryen")
Category.create(title: "Lannister")
Category.create(title: "Other Houses")
Category.create(title: "Off-Topic Discussion")
Post.create(title: "Lannister alaways pays their debt", message:"1?@!#", category_id:"5")
Post.create(title: "Lannister alaways pays their debt", message:"2!@##@", category_id:"5")
Post.create(title: "Lannister alaways pays their debt", message:"3!#%!#", category_id:"5")
Post.create(title: "Lannister alaways pays their debt", message:"4!#%!#%", category_id:"2")
Post.create(title: "Lannister alaways pays their debt", message:"5!@#", category_id:"2")
Post.create(title: "Lannister alaways pays their debt", message:"is i?", category_id:"1")
Post.create(title: "Lannister alaways pays their debt", message:"is  true?", category_id:"3")
Post.create(title: "Lannister alaways pays their debt", message:"is it true?", category_id:"4")