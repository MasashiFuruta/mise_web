class CreateAdminLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_lessons do |t|
      t.integer :client_id
      t.integer :admin_id
      t.integer :lesson_count
      t.datetime :p_start_datetime
      t.datetime :p_end_datetime
      t.text :p_comment
      t.datetime :d_start_datetime
      t.datetime :d_end_datetime
      t.text :d_comment

      t.timestamps
    end
  end
end
