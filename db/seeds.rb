# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(4.months.ago.to_date..Date.current).each do|date|
	rand(6).times do
User.create!(name:Faker::Team.name, pi: Faker::Number.rand_in_range(3.00, 26.00))
end
end