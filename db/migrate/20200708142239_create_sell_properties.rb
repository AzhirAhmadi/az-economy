# frozen_string_literal: true

class CreateSellProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_properties do |t|
      t.integer :quantity

      t.references :property

      t.timestamps
    end
  end
end
