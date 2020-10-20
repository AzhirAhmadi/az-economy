# frozen_string_literal: true

class AddJtiToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :jti, :string
    User.all.each { |user| user.update_column(:jti, SecureRandom.uuid) }
    change_column_null :users, :jti, false
    add_index :users, :jti, unique: true
  end
end
