# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  role_type  :string
#  role_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  # Callbacks

  # Validations

  # Relations
  belongs_to :role, polymorphic: true

  # Scopes

  # Others
end
