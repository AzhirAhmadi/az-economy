# frozen_string_literal: true

# == Schema Information
#
# Table name: rent_fields
#
#  id                 :bigint           not null, primary key
#  get_month          :integer
#  rent_period        :integer
#  area               :integer
#  cost               :integer
#  field_rent_data_id :bigint
#  company_id         :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class RentField < ApplicationRecord
  # Callbacks

  # Validations
  validates :get_month, :rent_period, :area, :cost, :field_rent_data, :company, presence: true

  # Relations
  belongs_to :company
  belongs_to :field_rent_data
  has_one :cash_account, as: :data, class_name: 'CashAccount'

  # Scopes

  # Others
end
