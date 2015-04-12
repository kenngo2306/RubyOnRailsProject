class AddWindLoadToProjectTypeInformation < ActiveRecord::Migration
  def change
    add_column :project_type_informations, :wind_load, :string
  end
end
