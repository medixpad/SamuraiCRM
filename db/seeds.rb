require 'faker'

Samurai::User.create!(email:"jonh@example.com", password:"123456", password_confirmation: "123456", admin: true)
puts "Jonh (admin) created"

Samurai::User.create!(email:"jorge@example.com", password:"123456", password_confirmation: "123456", admin: false)
puts "Jorge (non-admin) created"

10.times do |contact|
  Samurai::Contacts::Contact.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    company: Faker::Company.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    user_id: Samurai::User.first.id
  )
end
puts "10 contacts created for Jonh (admin)"

10.times do |contact|
  Samurai::Contacts::Contact.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    company: Faker::Company.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    user_id: Samurai::User.last.id
  )
end
puts "10 contacts created for Jorge (non-admin)"
