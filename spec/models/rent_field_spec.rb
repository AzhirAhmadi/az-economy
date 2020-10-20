# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe RentField, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:get_month) }
    it { should validate_presence_of(:rent_period) }
    it { should validate_presence_of(:area) }
    it { should validate_presence_of(:cost) }
    it { should validate_presence_of(:field_rent_data) }
    it { should validate_presence_of(:company) }
  end

  describe 'associations' do
    it { should belong_to(:company) }
    it { should belong_to(:field_rent_data) }
    it { should have_one(:cash_account).class_name('CashAccount') }
  end
end
