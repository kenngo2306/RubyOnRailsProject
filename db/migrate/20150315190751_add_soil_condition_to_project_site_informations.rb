class AddSoilConditionToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :soil_condition, :string
  end
end
