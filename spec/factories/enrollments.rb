# == Schema Information
#
# Table name: enrollments
#
#  id             :bigint           not null, primary key
#  student_id     :bigint
#  environment_id :bigint
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :enrollment do
    
  end
end
