# == Schema Information
#
# Table name: product_prices
#
#  id              :bigint           not null, primary key
#  value           :integer
#  product_data_id :bigint
#  expired_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class ProductPrice < ApplicationRecord
  # Callbacks

  # Validations
  validates :value, :product_data, presence: true

  # Relations
  belongs_to :product_data

  # Scopes

  # Others
end
