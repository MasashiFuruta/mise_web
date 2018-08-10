class DropContact < ActiveRecord::Migration[5.1]
  def down
    drop_table :contacts
  end
  def up
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :phone_number
      t.string :type
      t.text :message

      t.timestamps
    end
  end
end
