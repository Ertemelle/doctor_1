require 'faker'

10.times do 
	patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
	doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Cannabis.medical_use, postal_code: Faker::Number.number(5))
end

10.times do 
	appointement = Appointement.create(date: "2018-07-26 12:00:00".to_datetime, doctor_id: rand((Doctor.first.id)..(Doctor.last.id)), patient_id: rand((Patient.first.id)..(Patient.last.id)))
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
