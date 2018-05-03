class CreateAdminClients < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_clients do |t|
      t.string :family_name
      t.string :first_name
      t.string :kana_family_name
      t.string :kana_first_name
      t.integer :phone_number
      t.integer :zipcode
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :building

      t.timestamps
    end
  end
end
