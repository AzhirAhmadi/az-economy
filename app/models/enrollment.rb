# frozen_string_literal: true

# == Schema Information
#
# Table name: enrollments
#
#  id             :bigint           not null, primary key
#  student_id     :bigint
#  environment_id :bigint
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Enrollment < ApplicationRecord
  # Callbacks

  # Validations
  validates :environment, :student, presence: true

  # Relations
  belongs_to :environment
  belongs_to :student

  # Scopes

  # Others
  enum status: %i[registered accepted rejected]
end
