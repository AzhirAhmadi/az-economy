# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :student_number

      t.timestamps
    end
  end
end
