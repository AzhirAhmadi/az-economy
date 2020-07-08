class CreateProductPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :product_prices do |t|
      t.integer :value

      t.references :product_data

      t.datetime :expired_at
      t.timestamps
    end
  end
end
