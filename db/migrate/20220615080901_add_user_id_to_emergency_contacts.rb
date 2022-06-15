class AddUserIdToEmergencyContacts < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :emergency_contacts, :user_id, :integer
    end
  end
end
