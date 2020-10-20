# == Schema Information
#
# Table name: environments
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  start_month            :integer
#  duration               :integer
#  month_real_time_length :integer
#  teacher_id             :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :environment do
  end
end
