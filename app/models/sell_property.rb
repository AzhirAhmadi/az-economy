# frozen_string_literal: true

# == Schema Information
#
# Table name: sell_properties
#
#  id          :bigint           not null, primary key
#  quantity    :integer
#  property_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class SellProperty < ApplicationRecord
  # Callbacks

  # Validations
  validates :quantity, :property, :cash_account, presence: true

  # Relations
  belongs_to :property
  has_one :cash_account, as: :data, class_name: 'CashAccount'

  # Scopes

  # Others
end
