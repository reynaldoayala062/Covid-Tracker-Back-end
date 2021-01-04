# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: 'Joe', last_name: 'Gomez', email: 'abe@gmail.com', address: '321 abc St', password: 'qwe')

FavoriteList.create(name: "free testing sites", detail: "free testing sites around 77082", user_id: 1)

Location.create(name: 'free testing location', address: '123 abc st', zipcode: 12345, detail: 'free testing')

Comment.create(title: "test", detail: "testing went fast and smooth", star_rating: 4, user_id: 1, location_id: 1)

ListLocation.create(favorite_list_id: 1, location_id: 1)