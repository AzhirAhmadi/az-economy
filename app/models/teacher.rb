# frozen_string_literal: true

# == Schema Information
#
# Table name: teachers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Teacher < ApplicationRecord
  # Callbacks

  # Validations

  # Relations
  has_one :account, as: :role, class_name: 'User'
  has_many :environments

  # Scopes

  # Others
end
