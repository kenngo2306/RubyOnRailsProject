class AddGeotechReportInPossessionToProjectSiteInformations < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :geotech_report_in_possession, :boolean
  end
end
