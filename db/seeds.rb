# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Book.destroy_all
Review.destroy_all
Personalization.destroy_all

User.create(email: "test@test.com", password: "123123")



users = User.all


book1 = Book.create!(
  name: "Giraffes can't dance",
  author: "Giles Andreae",
  category: "sleep",
  description: "This is the description",
  language: "English",
  price: "19.99",
  age: "4-6",
  photo: "https://www.scholastic.com/content5/media/products/03/9780439287203_mres.jpg",
)



