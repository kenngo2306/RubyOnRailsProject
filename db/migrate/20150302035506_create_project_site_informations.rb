class CreateProjectSiteInformations < ActiveRecord::Migration
  def change
    create_table :project_site_informations do |t|
      t.decimal :area_length
      t.decimal :area_width
      t.text :area_description
      t.boolean :geotech_report_in_position
      t.boolean :bobcat_accessible
      t.boolean :construction_fence_required
      t.boolean :client_fence_dismantle_reinstall_required
      t.boolean :rock_excavation_required
      t.boolean :hand_dig_required
      t.boolean :dirt_haul_off_required
      t.boolean :tree_vegetation_removal_required
      t.boolean :area_is_sloped
      t.boolean :site_survey_required
      t.boolean :surface_protection_required
      t.boolean :under_ground_obstacles_yn
      t.boolean :structural_removal_required
      t.boolean :pvt_locator_required
      t.integer :project_type_information_id

      t.timestamps null: false
    end
  end
end
