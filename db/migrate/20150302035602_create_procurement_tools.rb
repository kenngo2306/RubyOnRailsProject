class CreateProcurementTools < ActiveRecord::Migration
  def change
    create_table :procurement_tools do |t|
      t.string :procurement_tool_name

      t.timestamps null: false
    end
  end
end
