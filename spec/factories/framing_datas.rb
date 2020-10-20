# frozen_string_literal: true

# == Schema Information
#
# Table name: framing_datas
#
#  id             :bigint           not null, primary key
#  palnting_cost  :integer
#  worker_salary  :integer
#  plant_month    :integer
#  harvest_month  :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :framing_data do
  end
end
