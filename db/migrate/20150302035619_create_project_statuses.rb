class CreateProjectStatuses < ActiveRecord::Migration
  def change
    create_table :project_statuses do |t|
      t.string :project_status_name

      t.timestamps null: false
    end
  end
end
