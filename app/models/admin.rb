# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Admin < ApplicationRecord
  # Callbacks

  # Validations

  # Relations
  has_one :account, as: :role, class_name: 'User'

  # Scopes

  # Others
end
