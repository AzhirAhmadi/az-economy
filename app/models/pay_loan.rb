# frozen_string_literal: true

# == Schema Information
#
# Table name: pay_loans
#
#  id          :bigint           not null, primary key
#  value       :integer
#  get_loan_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class PayLoan < ApplicationRecord
  # Callbacks

  # Validations
  validates :value, :get_loan, presence: true

  # Relations
  belongs_to :get_loan
  has_one :cash_account, as: :data, class_name: 'CashAccount'

  # Scopes

  # Others
end
