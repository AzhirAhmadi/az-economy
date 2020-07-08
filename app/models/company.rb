# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id             :bigint           not null, primary key
#  name           :integer
#  student_id     :bigint
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Company < ApplicationRecord
  # Callbacks

  # Validations
  validates :name, :owner, :environment, presence: true

  # Relations
  belongs_to :owner, class_name: 'Student', foreign_key: 'student_id'
  belongs_to :environment

  # Scopes

  # Others
end
