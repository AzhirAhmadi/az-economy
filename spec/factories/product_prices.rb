# == Schema Information
#
# Table name: product_prices
#
#  id              :bigint           not null, primary key
#  value           :integer
#  product_data_id :bigint
#  expired_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :product_price do
  end
end
