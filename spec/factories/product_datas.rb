# == Schema Information
#
# Table name: product_datas
#
#  id               :bigint           not null, primary key
#  name             :integer
#  product_function :string
#  framing_data_id  :bigint
#  expired_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :product_data do
    
  end
end
