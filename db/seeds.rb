require 'faker'

Samurai::User.create!(email:"jonh@example.com", password:"123456", password_confirmation: "123456", admin: true)
puts "Jonh (admin) created"

Samurai::User.create!(email:"jorge@example.com", password:"123456", password_confirmation: "123456", admin: false)
puts "Jorge (non-admin) created"

if Samurai::Core.available?(:contacts) 
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
end

if Samurai::Core.available?(:tasks)
  user = Samurai::User.first
  first_contact_id = user.contacts.first.id
  last_contact_id = user.contacts.last.id
  20.times do |task|
    task_user = Samurai::Tasks::Task.new(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraphs(rand(1..5),true),
      user_id: user.id 
    )
    if Samurai::Core.available?(:contacts)
      task_user.contact_id = (rand(first_contact_id..last_contact_id))
    end
    task_user.save
  end
  puts "20 tasks created for Jonh (admin)"
  
  user = Samurai::User.last
  first_contact_id = user.contacts.first.id
  last_contact_id = user.contacts.last.id
  20.times do |task|
    task_user = Samurai::Tasks::Task.new(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraphs(rand(1..5),true),
      user_id: user.id 
    )
    if Samurai::Core.available?(:contacts)
      task_user.contact_id = (rand(first_contact_id..last_contact_id))
    end
    task_user.save
  end
  puts "20 tasks created for Jorge (non-admin)"
end
