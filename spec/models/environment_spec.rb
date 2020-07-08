# == Schema Information
#
# Table name: environments
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  start_month            :integer
#  duration               :integer
#  month_real_time_length :integer
#  teacher_id             :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'rails_helper'

RSpec.describe Environment, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:start_month) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:month_real_time_length) }
    it { should validate_presence_of(:teacher) }
  end

  describe 'associations' do
    it { should belong_to(:teacher) }
    it { should have_many(:enrollments).dependent(:destroy) }
  end
end
