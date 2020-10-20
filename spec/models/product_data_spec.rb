# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe ProductData, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:product_function) }
    it { should validate_presence_of(:framing_data) }
  end
end
