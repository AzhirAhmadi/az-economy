# frozen_string_literal: true

class CreateFieldPlentings < ActiveRecord::Migration[5.2]
  def change
    create_table :field_plentings do |t|
      t.integer :worker_count
      t.integer :plant_month
      t.integer :cost

      t.references :rent_field
      t.references :framing_data

      t.datetime :expired
      t.timestamps
    end
  end
end
