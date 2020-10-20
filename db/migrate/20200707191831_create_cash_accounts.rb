# frozen_string_literal: true

class CreateCashAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :cash_accounts do |t|
      t.integer :month
      t.integer :type

      t.references :company
      t.references :data, polymorphic: true

      t.timestamps
    end
  end
end
