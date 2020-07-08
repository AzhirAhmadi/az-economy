# frozen_string_literal: true

# == Schema Information
#
# Table name: get_loans
#
#  id           :bigint           not null, primary key
#  get_month    :integer
#  loan_data_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class GetLoan < ApplicationRecord
  # Callbacks

  # Validations
  validates :get_month, :loan_data, presence: true

  # Relations
  belongs_to :loan_data
  has_one :cash_account, as: :data, class_name: 'CashAccount'

  # Scopes

  # Others
end
