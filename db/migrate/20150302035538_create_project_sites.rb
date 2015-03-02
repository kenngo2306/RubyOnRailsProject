class CreateProjectSites < ActiveRecord::Migration
  def change
    create_table :project_sites do |t|
      t.string :site_name
      t.string :site_address
      t.string :site_city
      t.string :site_zip
      t.string :site_access
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
