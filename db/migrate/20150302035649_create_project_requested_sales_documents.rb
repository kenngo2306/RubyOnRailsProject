class CreateProjectRequestedSalesDocuments < ActiveRecord::Migration
  def change
    create_table :project_requested_sales_documents do |t|
      t.integer :project_id
      t.integer :requested_sales_document_id

      t.timestamps null: false
    end
  end
end
