class ProcurementTool < ActiveRecord::Base

  has_many :projects

  validates_presence_of :procurement_tool_name
  validates_length_of :procurement_tool_name, :maximum => 50
end
