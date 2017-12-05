# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Flat.create(name: "Gaudi House", description: "Great Architecture", location: "Barcelona", price: 500)
# Flat.create(name: "Lebanese Villa", description: "Country House", location: "Lebanon", price: 400)
# Flat.create(name: "Puerta de Oro", description: "Very hot", location: "Barranquilla", price: 100)
# Flat.create(name: "Portugal Mansion", description: "Big space", location: "Portugal", price: 600)

# Registration.create(email: "omar@girl.com", password: "1234")
# Registration.create(email: "sergio@bread.com", password: "1234")
# Registration.create(email: "dan@pink.com", password: "1234")
# Registration.create(email: "ollie@belt.com", password: "1234")

# User.new(first_name: "", last_name: "", gender: "")
# User.new(first_name: "", last_name: "", gender: "")
# User.new(first_name: "", last_name: "", gender: "")
# User.new(first_name: "", last_name: "", gender: "")

User.destroy_all
Registration.destroy_all
Flat.destroy_all
# Booking.destroy_all

# emails = ["omar@girl.com", "sergio@bread.com", "dan@pink.com","ollie@belt.com"]

# emails.each do |email|
#   registration_instance = Registration.new( email: email, password: "123456")
#   registration_instance.save
# end
emilio_reg = Registration.new(email: "emilio@messi.com", password: "123456")
emilio_reg.save
# p emilio_reg.errors.full_messages
# p emilio_reg.save
emilio = User.new(first_name: "Emilio", last_name: "Hasbun", gender: "male")
emilio.registration = emilio_reg
emilio.save

# p emilio.save

emilio_flat = Flat.new(name: "Miami Beach House", description: "Nice View", location: "Miami", price: 300)

emilio_flat.user = emilio

p emilio_flat.save
# emilio_flat.errors.full_messages
# -----------------------------------------------------------
martine_reg = Registration.new(email: "martine@hot.com", password: "123456")
martine_reg.save

martine = User.new(first_name: "Martine", last_name: "Eisinga", gender: "female")
martine.registration = martine_reg
martine.save
martine_flat = Flat.new(name: "Amsterdam Canal House", description: "Big Rooms", location: "Amsterdam", price: 200)
martine_flat.user = martine
martine_flat.save
p "martine_flat.save"
p martine_flat.save

# -----------------------------------------------------------
# booking_1 = Booking.new(start_date: "07-07-2017", end_date: "07-10-2017")
# booking_1.flat = martine_flat
# booking_1.user = emilio
# p "booking_1.save"
# p booking_1.save
# booking_1.errors.full_messages




