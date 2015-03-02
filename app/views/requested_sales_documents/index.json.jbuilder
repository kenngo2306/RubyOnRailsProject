json.array!(@requested_sales_documents) do |requested_sales_document|
  json.extract! requested_sales_document, :id, :requested_sales_document_name
  json.url requested_sales_document_url(requested_sales_document, format: :json)
end
