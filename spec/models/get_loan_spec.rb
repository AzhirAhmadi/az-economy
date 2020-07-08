# == Schema Information
#
# Table name: get_loans
#
#  id           :bigint           not null, primary key
#  get_month    :integer
#  loan_data_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe GetLoan, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:get_month) }
    it { should validate_presence_of(:loan_data) }
  end

  describe 'associations' do
    it { should belong_to(:loan_data) }
    it { should have_one(:cash_account).class_name('CashAccount') }
  end
end
