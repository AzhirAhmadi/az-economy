# frozen_string_literal: true

# == Schema Information
#
# Table name: sell_properties
#
#  id          :bigint           not null, primary key
#  quantity    :integer
#  property_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe SellProperty, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:property) }
    it { should validate_presence_of(:cash_account) }
  end

  describe 'associations' do
    it { should have_one(:cash_account).class_name('CashAccount') }
  end
end
