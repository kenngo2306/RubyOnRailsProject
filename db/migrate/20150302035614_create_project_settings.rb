class CreateProjectSettings < ActiveRecord::Migration
  def change
    create_table :project_settings do |t|
      t.string :project_setting_name

      t.timestamps null: false
    end
  end
end
