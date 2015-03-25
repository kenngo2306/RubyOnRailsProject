class AddConcreteTruckAccess2ToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :concrete_truck_access, :boolean
  end
end
