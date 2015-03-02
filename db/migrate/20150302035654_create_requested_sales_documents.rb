class CreateRequestedSalesDocuments < ActiveRecord::Migration
  def change
    create_table :requested_sales_documents do |t|
      t.string :requested_sales_document_name

      t.timestamps null: false
    end
  end
end
