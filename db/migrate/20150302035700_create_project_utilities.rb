class CreateProjectUtilities < ActiveRecord::Migration
  def change
    create_table :project_utilities do |t|
      t.integer :utility_id
      t.integer :project_site_information_id

      t.timestamps null: false
    end
  end
end
