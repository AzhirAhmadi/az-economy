# == Schema Information
#
# Table name: rent_fields
#
#  id                 :bigint           not null, primary key
#  get_month          :integer
#  rent_period        :integer
#  area               :integer
#  cost               :integer
#  field_rent_data_id :bigint
#  company_id         :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
FactoryBot.define do
  factory :rent_field do
    
  end
end
