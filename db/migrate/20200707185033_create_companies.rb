# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.integer :name

      t.references :student
      t.references :environment

      t.datetime :expired_at
      t.timestamps
    end
  end
end
