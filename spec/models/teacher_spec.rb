# frozen_string_literal: true

# == Schema Information
#
# Table name: teachers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe 'associations' do
    it { should have_one(:account).class_name('User') }
    it { should have_many(:environments) }
  end
end
