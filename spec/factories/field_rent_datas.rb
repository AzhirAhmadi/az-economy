# == Schema Information
#
# Table name: field_rent_datas
#
#  id             :bigint           not null, primary key
#  rent_cost      :integer
#  min_area       :integer
#  max_area       :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :field_rent_data do
    
  end
end
