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
FactoryBot.define do
  factory :field_plenting do
  end
end
