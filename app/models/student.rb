# frozen_string_literal: true

# == Schema Information
#
# Table name: students
#
#  id             :bigint           not null, primary key
#  student_number :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Student < ApplicationRecord
  # Callbacks

  # Validations
  validates :student_number, presence: true

  # Relations
  has_one :account, as: :role, class_name: 'User'
  has_many :enrollments, dependent: :destroy

  # Scopes

  # Others
end
