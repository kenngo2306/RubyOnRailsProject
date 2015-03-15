class DropSoilConditionsTable < ActiveRecord::Migration
  def change
	drop_table :soil_conditions
  end
end
