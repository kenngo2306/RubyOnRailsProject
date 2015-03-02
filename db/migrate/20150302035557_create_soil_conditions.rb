class CreateSoilConditions < ActiveRecord::Migration
  def change
    create_table :soil_conditions do |t|
      t.string :soil_condition_name

      t.timestamps null: false
    end
  end
end
