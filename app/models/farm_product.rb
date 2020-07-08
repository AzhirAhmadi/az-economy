# frozen_string_literal: true

# == Schema Information
#
# Table name: farm_products
#
#  id                :bigint           not null, primary key
#  quantity          :integer
#  product_data_id   :bigint
#  field_plenting_id :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class FarmProduct < ApplicationRecord
  # Callbacks

  # Validations
  validates :quantity, :product_data, :field_plenting, presence: true

  # Relations
  belongs_to :product_data
  belongs_to :field_plenting
  has_one :parent, as: :data, class_name: 'Property'

  # Scopes

  # Others
end
