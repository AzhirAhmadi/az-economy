# == Schema Information
#
# Table name: companies
#
#  id             :bigint           not null, primary key
#  name           :integer
#  student_id     :bigint
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :company do
    
  end
end
