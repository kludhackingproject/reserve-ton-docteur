class CreateDoctorSpecialityLists < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_speciality_lists do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :speciality, index: true

      t.timestamps

      remove_column :doctors, :specialty
    end
  end
end
