require 'faker'

User.destroy_all
Registration.destroy_all
Flat.destroy_all
# Booking.destroy_all
# location = Faker::Address.street_address
# email = Faker::Internet.free_email
password = "123456"

10.times do
  registration = Registration.new(email: Faker::Internet.free_email, password: "123456")
  registration.save

  user = User.new(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, gender: "male")
  user.registration = registration
  user.save
# p user.first_name

  rand(0..3).times do
    url = "http://lorempixel.com/1600/600/city/" + rand(1..10).to_s
    flat = Flat.new(
      name: Faker::DragonBall.character,
      description: Faker::ChuckNorris.fact,
      location: Faker::Address.street_address,
      price: rand(100..1500),
      photo: url,
       )
    flat.user = user
    flat.save
    # flat.photo = url
  end
end



emilio_reg = Registration.new(email: "emilio@messi.com", password: "123456")
emilio_reg.save
# p emilio_reg.errors.full_messages
# p emilio_reg.save
emilio = User.new(first_name: "Emilio", last_name: "Hasbun", gender: "male")
emilio.registration = emilio_reg
emilio.save

p emilio.save

emilio_flat = Flat.new(name: "Miami Beach House", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son ", location: "Miami", price: 300)

emilio_flat.user = emilio

p emilio_flat.save
# emilio_flat.errors.full_messages
# -----------------------------------------------------------
martine_reg = Registration.new(email: "martine@hot.com", password: "123456")
martine_reg.save

martine = User.new(first_name: "Martine", last_name: "Eisinga", gender: "female")
martine.registration = martine_reg
martine.save
martine_flat = Flat.new(name: "Amsterdam Canal House", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son ", location: "Amsterdam", price: 200)
martine_flat.user = martine
martine_flat.save
p "martine_flat.save"
p martine_flat.save
# -----------------------------------------------------------

omar_reg = Registration.new(email: "omar@girl.com", password: "123456")
omar_reg.save

omar = User.new(first_name: "Omar", last_name: "Chamoun", gender: "male")
omar.registration = omar_reg
omar.save
omar_flat = Flat.new(name: "Lebanon Palace", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son", location: "Lebanon", price: 200)
omar_flat.user = omar
omar_flat.save
p "omar_flat.save"
p omar_flat.save
# -----------------------------------------------------------

sergio_reg = Registration.new(email: "sergio@portugal.com", password: "123456")
sergio_reg.save

sergio = User.new(first_name: "Sergio", last_name: "Salves", gender: "male")
sergio.registration = sergio_reg
sergio.save
sergio_flat = Flat.new(name: "Portugal Villa", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son", location: "Portugal", price: 200)
sergio_flat.user = sergio
sergio_flat.save
p "sergio_flat.save"
p sergio_flat.save

# -----------------------------------------------------------

ollie_reg = Registration.new(email: "ollie@netherlands.com", password: "123456")
ollie_reg.save

ollie = User.new(first_name: "Ollie", last_name: "Ol", gender: "male")
ollie.registration = ollie_reg
ollie.save
ollie_flat = Flat.new(name: "Amsterdam Apartment", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son ", location: "Amsterdam", price: 200)
ollie_flat.user = ollie
ollie_flat.save
p "ollie_flat.save"
p ollie_flat.save

# -----------------------------------------------------------

dan_reg = Registration.new(email: "dan@pink.com", password: "123456")
dan_reg.save

dan = User.new(first_name: "Dan", last_name: "Ireland", gender: "male")
dan.registration = dan_reg
dan.save
dan_flat = Flat.new(name: "Ireland House", description: "The house of Tomeu is situated just beautiful. To be honest - it is even more beautiful than on the pictures. We have stayed here with our little son ", location: "Ireland", price: 200)
dan_flat.user = dan
dan_flat.save
p "dan_flat.save"
p dan_flat.save



# # booking_1 = Booking.new(start_date: "07-07-2017", end_date: "07-10-2017")
# # booking_1.flat = martine_flat
# # booking_1.user = emilio
# # p "booking_1.save"
# # p booking_1.save
# # booking_1.errors.full_messages




