# == Schema Information
#
# Table name: properties
#
#  id         :bigint           not null, primary key
#  company_id :bigint
#  data_type  :string
#  data_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:company) }
  end

  describe 'associations' do
    it { should belong_to(:company) }
  end
end
