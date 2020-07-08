# == Schema Information
#
# Table name: framing_datas
#
#  id             :bigint           not null, primary key
#  palnting_cost  :integer
#  worker_salary  :integer
#  plant_month    :integer
#  harvest_month  :integer
#  environment_id :bigint
#  expired_at     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class FramingData < ApplicationRecord
  # Callbacks

  # Validations
  validates :palnting_cost, :worker_salary, :plant_month, :harvest_month, :environment, presence: true

  # Relations
  belongs_to :environment

  # Scopes

  # Others
end
