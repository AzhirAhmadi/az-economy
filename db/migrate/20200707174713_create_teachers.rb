# frozen_string_literal: true

class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers, &:timestamps
  end
end
