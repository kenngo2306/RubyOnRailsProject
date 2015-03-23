class AddCraneAccessToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :crane_access, :boolean
  end
end
