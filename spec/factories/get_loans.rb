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
FactoryBot.define do
  factory :get_loan do
  end
end
