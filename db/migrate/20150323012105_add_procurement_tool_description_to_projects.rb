class AddProcurementToolDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :procurement_tool_description, :string
  end
end
