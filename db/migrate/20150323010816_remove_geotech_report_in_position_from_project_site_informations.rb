class RemoveGeotechReportInPositionFromProjectSiteInformations < ActiveRecord::Migration
  def change
    remove_column :project_site_informations, :geotech_report_in_position, :boolean
  end
end
