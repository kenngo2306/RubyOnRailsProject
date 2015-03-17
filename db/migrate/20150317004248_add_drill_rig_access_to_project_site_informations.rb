class AddDrillRigAccessToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :drill_rig_access, :boolean
  end
end
