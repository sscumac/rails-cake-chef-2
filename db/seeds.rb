# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying database"
Cake.destroy_all
Ingredient.destroy_all

puts "Database cleaned"

puts "Adding Ingredients"

Zucker = Ingredient.create(name: "Zucker")
Zucker = Ingredient.create(name: "Mascarpone")
Zucker = Ingredient.create(name: "Schlagsahne")
Zucker = Ingredient.create(name: "Magerquark")
Zucker = Ingredient.create(name: "Vanillin")
Zucker = Ingredient.create(name: "Mehl")
Zucker = Ingredient.create(name: "Vanillepulver")
Zucker = Ingredient.create(name: "Vanillezucker")
Zucker = Ingredient.create(name: "Zimt")
Zucker = Ingredient.create(name: "Butter")
Zucker = Ingredient.create(name: "Salz")
Zucker = Ingredient.create(name: "Ei")
Zucker = Ingredient.create(name: "Kakaopulver")
Zucker = Ingredient.create(name: "Zitronensaft")
Zucker = Ingredient.create(name: "Kaffee")
Zucker = Ingredient.create(name: "Puderzucker")
Zucker = Ingredient.create(name: "Haselnuss gerieben")
Zucker = Ingredient.create(name: "Mandel gerieben")

