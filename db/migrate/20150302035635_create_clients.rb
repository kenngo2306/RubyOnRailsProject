class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :billing_address
      t.string :billing_city
      t.string :billing_zip
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
