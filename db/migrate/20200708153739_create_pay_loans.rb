# frozen_string_literal: true

class CreatePayLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :pay_loans do |t|
      t.integer :value

      t.references :get_loan

      t.timestamps
    end
  end
end
