# frozen_string_literal: true

class CreateFieldRentDatas < ActiveRecord::Migration[5.2]
  def change
    create_table :field_rent_datas do |t|
      t.integer :rent_cost
      t.integer :min_area
      t.integer :max_area

      t.references :environment

      t.datetime :expired_at
      t.timestamps
    end
  end
end
