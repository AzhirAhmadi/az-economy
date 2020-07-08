# frozen_string_literal: true

# == Schema Information
#
# Table name: enrollments
#
#  id             :bigint           not null, primary key
#  student_id     :bigint
#  environment_id :bigint
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe 'associations' do
    it { should belong_to(:environment) }
    it { should belong_to(:student) }
  end

  describe 'validations' do
    it { should validate_presence_of(:environment) }
    it { should validate_presence_of(:student) }
  end

  it { should define_enum_for(:status).with_values(%i[registered accepted rejected]) }
end
