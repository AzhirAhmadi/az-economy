# frozen_string_literal: true

# == Schema Information
#
# Table name: loan_datas
#
#  id               :bigint           not null, primary key
#  value            :integer
#  repay_in_month   :integer
#  interest_percent :integer
#  environment_id   :bigint
#  expired_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class LoanData < ApplicationRecord
  # Callbacks

  # Validations
  validates :value, :repay_in_month, :interest_percent, :environment, presence: true

  # Relations
  belongs_to :environment

  # Scopes

  # Others
end
