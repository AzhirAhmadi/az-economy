# frozen_string_literal: true

class CreateLoanDatas < ActiveRecord::Migration[5.2]
  def change
    create_table :loan_datas do |t|
      t.integer :value
      t.integer :repay_in_month
      t.integer :interest_percent

      t.references :environment

      t.datetime :expired_at
      t.timestamps
    end
  end
end
