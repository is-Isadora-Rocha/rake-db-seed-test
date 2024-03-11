# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# rails db:seed
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


=begin 10.times do |i|
  puts "Usuário #{i} cadastrado "
  User.create(name: "Usuário #{i}", email: "usuario@gmail.com")
end
=end

# gem faker
# https://github.com/faker-ruby/faker

10.times do |i|
  user_name = Faker::Name.name
  user_email = Faker::Internet.email
  user = "#{user_name} - #{user_email}"
  puts "#{user} cadastrado"
  User.create(name: user_name, email: user_email)
end
