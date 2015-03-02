class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.string :contact_cell
      t.string :contact_work
      t.integer :client_id
      t.integer :contact_type_id

      t.timestamps null: false
    end
  end
end
