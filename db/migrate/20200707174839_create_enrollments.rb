class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :student
      t.references :environment

      t.integer :status

      t.timestamps
    end
  end
end
