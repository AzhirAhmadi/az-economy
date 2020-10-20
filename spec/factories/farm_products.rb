# == Schema Information
#
# Table name: farm_products
#
#  id                :bigint           not null, primary key
#  quantity          :integer
#  product_data_id   :bigint
#  field_plenting_id :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
FactoryBot.define do
  factory :farm_product do
  end
end
