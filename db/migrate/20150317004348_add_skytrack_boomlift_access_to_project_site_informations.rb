class AddSkytrackBoomliftAccessToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :skytrack_boomlift_access, :boolean
  end
end
