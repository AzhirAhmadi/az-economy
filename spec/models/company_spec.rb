# == Schema Information
#
# Table name: companies
#
#  id             :bigint           not null, primary key
#  name           :integer
#  student_id     :bigint
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:environment) }
  end

  describe 'associations' do
    it { should belong_to(:owner).class_name('Student').with_foreign_key('student_id') }
    it { should belong_to(:environment) }
  end
end
