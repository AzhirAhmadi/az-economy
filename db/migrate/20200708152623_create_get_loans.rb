# frozen_string_literal: true

class CreateGetLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :get_loans do |t|
      t.integer :get_month

      t.references :loan_data

      t.timestamps
    end
  end
end
