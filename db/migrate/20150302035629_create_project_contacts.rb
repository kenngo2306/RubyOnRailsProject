class CreateProjectContacts < ActiveRecord::Migration
  def change
    create_table :project_contacts do |t|
      t.integer :project_id
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end
