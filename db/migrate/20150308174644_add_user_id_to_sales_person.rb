class AddUserIdToSalesPerson < ActiveRecord::Migration
  def change
    add_column :sales_people, :user_id, :integer
  end
end
