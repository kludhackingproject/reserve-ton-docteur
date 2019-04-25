class Speciality < ApplicationRecord
  has_many :doctors, through: :doctor_speciality_lists
end
