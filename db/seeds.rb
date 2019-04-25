# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

###### A faire pour la correction ########

### 2.1.2. Les models (Ils sont déjà créés, pas besoin de les recréer)
# 1 - Lancer les commandes suivantes dans le terminal
  # rails g model Doctor first_name:string last_name:string specialty:string zip_code:string
  # rails g model Patient first_name:string last_name:string
  # rails g model Appointment date:datetime


### 2.1.3. Tester (Cmommencer par lancer la commande "rails db:seed" dans la console)

# 100.times do
#   doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Educator.subject, zip_code: Faker::Address.zip_code)
#   patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end
#
# 400.times do
#   the_doctor = Doctor.find(Doctor.pluck(:id).shuffle.first)
#   the_patient = Patient.find(Patient.pluck(:id).shuffle.first)
#
#   appointment = Appointment.create!(doctor: the_doctor, patient: the_patient, date:Faker::Date.forward(300))
# end

# ----- Requettes à faire pour le test (dans la console "rails c") : ------

# tp Doctor.all
# => Retourne tous les docteurs en BDD

# tp Patient.all
# => Retourne tous les patients en BDD

# Appointment.find(5).patient
# => Retourne le patient qui a l'appointment en id 5

# Appointment.find(32).doctor
# => Retourne le docteur qui a l'appointment en id 32

# Patient.find(55).doctors
# #=> Retourne tous les docteurs que possède le patient avec l'id 55

# Doctor.find(82).patients
# #=> Retourne tous les patients que possède le docteur avec l'id 82


### 2.1.4. Petit coup de boost

# city
# 100.times do
#   the_doctor = Doctor.find(Doctor.pluck(:id).shuffle.first)
#   the_patient = Patient.find(Patient.pluck(:id).shuffle.first)
#   the_appointment = Appointment.find(Appointment.pluck(:id).shuffle.first)
#   city = City.create!(city: Faker::Address.city, doctor: the_doctor, patient: the_patient, appointment: the_appointment)
# end

# speciality
100.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  speciality = Speciality.create!(speciality: Faker::Educator.subject)
end

100.times do
  the_doctor = Doctor.find(Doctor.pluck(:id).shuffle.first)
  the_speciality = Speciality.find(Speciality.pluck(:id).shuffle.first)
  doctordpecialitylist = DoctorSpecialityList.create!(doctor: the_doctor, speciality: the_speciality)
end

# ----- Requettes à faire pour le test (dans la console "rails c") : ------

# tp Doctor.all
# => Retourne tous les docteurs en BDD

# tp Patient.all
# => Retourne tous les patients en BDD

# Appointment.find(5).patient
# => Retourne le patient qui a l'appointment en id 5

# Appointment.find(32).doctor
# => Retourne le docteur qui a l'appointment en id 32

# Patient.find(55).doctors
# #=> Retourne tous les docteurs que possède le patient avec l'id 55

# Doctor.find(82).patients
# #=> Retourne tous les patients que possède le docteur avec l'id 82

# tp Doctor.find(32).specialities
# => retoure les spécialités du docteur ayant l'id 32
