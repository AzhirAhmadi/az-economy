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
require 'rails_helper'

RSpec.describe ProductPrice, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:product_data) }
  end
end
