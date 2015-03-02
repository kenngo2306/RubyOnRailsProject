class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.date :start_date
      t.date :deadline
      t.text :client_goal
      t.text :time_frame_description
      t.integer :mobilization_quantity
      t.boolean :liquidate_damages_yn
      t.boolean :prevailing_wages_certified_payroll_yn
      t.boolean :permit_special_inspection_in_possession
      t.text :restricted_work_hours
      t.boolean :permit_submittal_required
      t.boolean :permit_fees_required
      t.text :permit_fees
      t.decimal :project_budget
      t.integer :deal_type_id
      t.text :deal_type_description
      t.integer :project_setting_id
      t.integer :procurement_tool_id
      t.integer :sales_person_id
      t.integer :project_status_id
      t.integer :irrigation_responsibility_id

      t.timestamps null: false
    end
  end
end
