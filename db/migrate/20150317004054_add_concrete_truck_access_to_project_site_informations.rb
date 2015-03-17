class AddConcreteTruckAccessToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :concreate_truck_access, :boolean
  end
end
