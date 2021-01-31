# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  first_name             :string
#  last_name              :string
#  role_type              :string
#  role_id                :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  jti                    :string           not null
#
FactoryBot.define do
  factory :admin_user, class: User do
    sequence(:email) { |n| "test#{n}@admin.com" }
    first_name { "first_name" }
    last_name { "flast_name" }
    role { create(:admin) }
    password { "123456" }
  end

  factory :teacher_user, class: User do
    sequence(:email) { |n| "test#{n}@teacher.com" }
    first_name { "first_name" }
    last_name { "flast_name" }
    role { create(:teacher) }
    password { "123456" }
  end

  factory :student_user, class: User do
    sequence(:email) { |n| "test#{n}@student.com" }
    first_name { "first_name" }
    last_name { "flast_name" }
    role { create(:student) }
    password { "123456" }
  end
end
