# == Schema Information
#
# Table name: pay_loans
#
#  id          :bigint           not null, primary key
#  value       :integer
#  get_loan_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe PayLoan, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:get_loan) }
  end

  describe 'associations' do
    it { should belong_to(:get_loan) }
    it { should have_one(:cash_account).class_name('CashAccount') }
  end
end
