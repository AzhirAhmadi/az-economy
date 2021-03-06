# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'associations' do
    it { should have_one(:account).class_name('User') }
  end
end
