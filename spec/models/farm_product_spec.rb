# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe FarmProduct, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:product_data) }
    it { should validate_presence_of(:field_plenting) }
  end

  describe 'associations' do
    it { should belong_to(:product_data) }
    it { should belong_to(:field_plenting) }
    it { should have_one(:parent).class_name('Property') }
  end
end
