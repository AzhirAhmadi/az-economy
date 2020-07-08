# == Schema Information
#
# Table name: students
#
#  id             :bigint           not null, primary key
#  student_number :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:student_number) }
  end

  describe 'associations' do
    it { should have_one(:account).class_name('User') }
    it { should have_many(:enrollments).dependent(:destroy) }
  end
end
