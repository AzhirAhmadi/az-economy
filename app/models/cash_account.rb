# frozen_string_literal: true

# == Schema Information
#
# Table name: cash_accounts
#
#  id         :bigint           not null, primary key
#  month      :integer
#  type       :integer
#  company_id :bigint
#  data_type  :string
#  data_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CashAccount < ApplicationRecord
  # Callbacks

  # Validations
  validates :month, :type, :data, :company, presence: true

  # Relations
  belongs_to :data, polymorphic: true
  belongs_to :company

  # Scopes

  # Others
  enum type: %i(income outcome)
end
