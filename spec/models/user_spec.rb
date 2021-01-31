# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  first_name             :string
#  last_name              :string
#  role_type              :string
#  role_id                :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  jti                    :string           not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should check emali uniqueness' do
      create(:admin_user, email: 'email@addresse.foo')
      should_not allow_value("email@addresse.foo").for(:email)
    end

    it { should allow_value("email@addresse.foo").for(:email) }
    it { should_not allow_value("invalid_email_format").for(:email) }
  end

  describe 'associations' do
    it { should belong_to(:role) }
  end
end
