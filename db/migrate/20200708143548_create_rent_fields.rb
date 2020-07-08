class CreateRentFields < ActiveRecord::Migration[5.2]
  def change
    create_table :rent_fields do |t|
      t.integer :get_month
      t.integer :rent_period
      t.integer :area
      t.integer :cost

      t.references :field_rent_data
      t.references :company

      t.timestamps
    end
  end
end
