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
class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :recoverable,
  :rememberable, :validatable, :trackable,
  :jwt_authenticatable, jwt_revocation_strategy: self

  # Callbacks
  before_create :add_jti

  # Validations

  # Relations
  belongs_to :role, polymorphic: true

  # Scopes

  # Others
  def add_jti
    self.jti ||= SecureRandom.uuid
  end

  def generate_jwt
      JWT.encode({ id: id,
                  exp: 5.days.from_now.to_i },
                  Rails.env.devise.jwt.secret_key)
  end
end
