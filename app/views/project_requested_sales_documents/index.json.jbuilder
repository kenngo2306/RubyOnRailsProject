json.array!(@project_requested_sales_documents) do |project_requested_sales_document|
  json.extract! project_requested_sales_document, :id, :project_id, :requested_sales_document_id
  json.url project_requested_sales_document_url(project_requested_sales_document, format: :json)
end
