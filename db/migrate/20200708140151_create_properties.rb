# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :company
      t.references :data, polymorphic: true

      t.timestamps
    end
  end
end
