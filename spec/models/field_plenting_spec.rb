# frozen_string_literal: true

# == Schema Information
#
# Table name: field_plentings
#
#  id              :bigint           not null, primary key
#  worker_count    :integer
#  plant_month     :integer
#  cost            :integer
#  rent_field_id   :bigint
#  framing_data_id :bigint
#  expired         :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe FieldPlenting, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:worker_count) }
    it { should validate_presence_of(:plant_month) }
    it { should validate_presence_of(:cost) }
    it { should validate_presence_of(:rent_field) }
    it { should validate_presence_of(:framing_data) }
  end

  describe 'associations' do
    it { should belong_to(:rent_field) }
    it { should belong_to(:framing_data) }
    it { should have_one(:cash_account).class_name('CashAccount') }
  end
end
