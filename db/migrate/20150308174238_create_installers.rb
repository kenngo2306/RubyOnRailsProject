class CreateInstallers < ActiveRecord::Migration
  def change
    create_table :installers do |t|
      t.string :installer_first_name
      t.string :installer_last_name
      t.string :installer_email
      t.string :installer_phone
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
