# frozen_string_literal: true

# == Schema Information
#
# Table name: properties
#
#  id         :bigint           not null, primary key
#  company_id :bigint
#  data_type  :string
#  data_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :property do
  end
end
