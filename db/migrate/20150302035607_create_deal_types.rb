class CreateDealTypes < ActiveRecord::Migration
  def change
    create_table :deal_types do |t|
      t.string :deal_type_name

      t.timestamps null: false
    end
  end
end
