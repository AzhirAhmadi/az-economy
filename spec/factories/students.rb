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
FactoryBot.define do
  factory :student do
    student_number {'1234567890'}
  end
end
