# frozen_string_literal: true

class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins, &:timestamps
  end
end
