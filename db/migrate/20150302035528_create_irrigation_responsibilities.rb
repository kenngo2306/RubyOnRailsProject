class CreateIrrigationResponsibilities < ActiveRecord::Migration
  def change
    create_table :irrigation_responsibilities do |t|
      t.string :irrigation_responsibility_name

      t.timestamps null: false
    end
  end
end
