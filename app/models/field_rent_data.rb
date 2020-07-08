# frozen_string_literal: true

# == Schema Information
#
# Table name: field_rent_datas
#
#  id             :bigint           not null, primary key
#  rent_cost      :integer
#  min_area       :integer
#  max_area       :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class FieldRentData < ApplicationRecord
  # Callbacks

  # Validations
  validates :rent_cost, :min_area, :max_area, :environment, presence: true

  # Relations
  belongs_to :environment

  # Scopes

  # Others
end
