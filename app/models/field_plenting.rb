# frozen_string_literal: true

# == Schema Information
#
# Table name: field_plentings
#
#  id              :bigint           not null, primary key
#  worker_count    :integer
#  plant_month     :integer
#  cost            :integer
#  rent_field_id   :bigint
#  framing_data_id :bigint
#  expired         :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class FieldPlenting < ApplicationRecord
  # Callbacks

  # Validations
  validates :worker_count, :plant_month, :cost, :rent_field, :framing_data, presence: true

  # Relations
  belongs_to :rent_field
  belongs_to :framing_data
  has_one :cash_account, as: :data, class_name: 'CashAccount'

  # Scopes

  # Others
end
