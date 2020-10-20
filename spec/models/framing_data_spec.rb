# frozen_string_literal: true

# == Schema Information
#
# Table name: framing_datas
#
#  id             :bigint           not null, primary key
#  palnting_cost  :integer
#  worker_salary  :integer
#  plant_month    :integer
#  harvest_month  :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe FramingData, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:palnting_cost) }
    it { should validate_presence_of(:worker_salary) }
    it { should validate_presence_of(:plant_month) }
    it { should validate_presence_of(:harvest_month) }
    it { should validate_presence_of(:environment) }
  end
end
