# == Schema Information
#
# Table name: loan_datas
#
#  id               :bigint           not null, primary key
#  value            :integer
#  repay_in_month   :integer
#  interest_percent :integer
#  environment_id   :bigint
#  expired_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'rails_helper'

RSpec.describe LoanData, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:repay_in_month) }
    it { should validate_presence_of(:interest_percent) }
    it { should validate_presence_of(:environment) }
  end
end
