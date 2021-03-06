class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.integer :phone_number
      t.string :type
      t.text :message

      t.timestamps
    end
  end
end
