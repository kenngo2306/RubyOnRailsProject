class AddAddressToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :contact_address, :string
    add_column :contacts, :contact_city, :string
    add_column :contacts, :contact_zip, :string
    add_column :contacts, :state_id, :integer
  end
end
