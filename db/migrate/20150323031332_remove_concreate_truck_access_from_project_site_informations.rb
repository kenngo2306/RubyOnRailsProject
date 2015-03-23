class RemoveConcreateTruckAccessFromProjectSiteInformations < ActiveRecord::Migration
  def change
    remove_column :project_site_informations, :concreate_truck_access, :boolean
  end
end
