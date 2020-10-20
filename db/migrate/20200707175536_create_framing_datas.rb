# frozen_string_literal: true

class CreateFramingDatas < ActiveRecord::Migration[5.2]
  def change
    create_table :framing_datas do |t|
      t.integer :palnting_cost
      t.integer :worker_salary
      t.integer :plant_month
      t.integer :harvest_month

      t.references :environment

      t.datetime :expired_at
      t.timestamps
    end
  end
end
