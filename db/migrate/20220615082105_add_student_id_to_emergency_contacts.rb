class AddStudentIdToEmergencyContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :emergency_contacts, :student_id, :integer
  end
end
