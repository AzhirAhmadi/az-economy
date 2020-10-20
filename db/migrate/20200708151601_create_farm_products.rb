# frozen_string_literal: true

class CreateFarmProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :farm_products do |t|
      t.integer :quantity

      t.references :product_data
      t.references :field_plenting

      t.timestamps
    end
  end
end
