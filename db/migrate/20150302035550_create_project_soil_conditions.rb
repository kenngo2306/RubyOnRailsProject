class CreateProjectSoilConditions < ActiveRecord::Migration
  def change
    create_table :project_soil_conditions do |t|
      t.integer :soil_condition_id
      t.integer :project_site_information_id

      t.timestamps null: false
    end
  end
end
