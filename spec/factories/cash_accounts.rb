# == Schema Information
#
# Table name: cash_accounts
#
#  id         :bigint           not null, primary key
#  month      :integer
#  type       :integer
#  company_id :bigint
#  data_type  :string
#  data_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :cash_account do
    
  end
end
