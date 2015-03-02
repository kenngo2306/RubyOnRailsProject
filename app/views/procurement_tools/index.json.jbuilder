json.array!(@procurement_tools) do |procurement_tool|
  json.extract! procurement_tool, :id, :procurement_tool_name
  json.url procurement_tool_url(procurement_tool, format: :json)
end
