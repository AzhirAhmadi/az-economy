# == Schema Information
#
# Table name: loan_datas
#
#  id               :bigint           not null, primary key
#  value            :integer
#  repay_in_month   :integer
#  interest_percent :integer
#  environment_id   :bigint
#  expired_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :loan_data do
    
  end
end
