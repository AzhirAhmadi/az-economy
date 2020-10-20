# frozen_string_literal: true

class CreateProductDatas < ActiveRecord::Migration[5.2]
  def change
    create_table :product_datas do |t|
      t.integer :name
      t.string :product_function

      t.references :framing_data

      t.datetime :expired_at
      t.timestamps
    end
  end
end
