# frozen_string_literal: true

class CreateEnvironments < ActiveRecord::Migration[5.2]
  def change
    create_table :environments do |t|
      t.string :name
      t.integer :start_month
      t.integer :duration
      t.integer :month_real_time_length

      t.references :teacher

      t.timestamps
    end
  end
end
