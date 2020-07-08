# == Schema Information
#
# Table name: cash_accounts
#
#  id         :bigint           not null, primary key
#  month      :integer
#  type       :integer
#  company_id :bigint
#  data_type  :string
#  data_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CashAccount, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:month) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:company) }
  end

  describe 'associations' do
    it { should belong_to(:data) }
    it { should belong_to(:company) }
  end

  it { should define_enum_for(:type).with_values(%i[income outcome]) }
end
