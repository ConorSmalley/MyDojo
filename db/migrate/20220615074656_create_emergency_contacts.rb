class CreateEmergencyContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :emergency_contacts do |t|
      t.string :name
      t.string :relationship
      t.string :number

      t.timestamps
    end
  end
end
