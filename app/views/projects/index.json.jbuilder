json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :start_date, :deadline, :client_goal, :time_frame_description, :mobilization_quantity, :liquidate_damages_yn, :prevailing_wages_certified_payroll_yn, :permit_special_inspection_in_possession, :restricted_work_hours, :permit_submittal_required, :permit_fees_required, :permit_fees, :project_budget, :deal_type_id, :deal_type_description, :project_setting_id, :procurement_tool_id, :sales_person_id, :project_status_id, :irrigation_responsibility_id
  json.url project_url(project, format: :json)
end
