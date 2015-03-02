class CreateSalesPeople < ActiveRecord::Migration
  def change
    create_table :sales_people do |t|
      t.string :sales_person_first_name
      t.string :sales_person_last_name
      t.string :sales_person_email
      t.string :sales_person_phone

      t.timestamps null: false
    end
  end
end
