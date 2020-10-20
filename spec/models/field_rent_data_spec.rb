# frozen_string_literal: true

# == Schema Information
#
# Table name: field_rent_datas
#
#  id             :bigint           not null, primary key
#  rent_cost      :integer
#  min_area       :integer
#  max_area       :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe FieldRentData, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:rent_cost) }
    it { should validate_presence_of(:min_area) }
    it { should validate_presence_of(:max_area) }
    it { should validate_presence_of(:environment) }
  end
end
