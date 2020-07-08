# frozen_string_literal: true

# == Schema Information
#
# Table name: environments
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  start_month            :integer
#  duration               :integer
#  month_real_time_length :integer
#  teacher_id             :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Environment < ApplicationRecord
  # Callbacks

  # Validations
  validates :name, :start_month, :duration, :month_real_time_length, :teacher, presence: true

  # Relations
  belongs_to :teacher
  has_many :enrollments, dependent: :destroy
  # Scopes

  # Others
end
