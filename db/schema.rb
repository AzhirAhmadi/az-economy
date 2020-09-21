# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_21_061925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cash_accounts", force: :cascade do |t|
    t.integer "month"
    t.integer "type"
    t.bigint "company_id"
    t.string "data_type"
    t.bigint "data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_cash_accounts_on_company_id"
    t.index ["data_type", "data_id"], name: "index_cash_accounts_on_data_type_and_data_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "name"
    t.bigint "student_id"
    t.bigint "environment_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_companies_on_environment_id"
    t.index ["student_id"], name: "index_companies_on_student_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "environment_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_enrollments_on_environment_id"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.integer "start_month"
    t.integer "duration"
    t.integer "month_real_time_length"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_environments_on_teacher_id"
  end

  create_table "farm_products", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "product_data_id"
    t.bigint "field_plenting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_plenting_id"], name: "index_farm_products_on_field_plenting_id"
    t.index ["product_data_id"], name: "index_farm_products_on_product_data_id"
  end

  create_table "field_plentings", force: :cascade do |t|
    t.integer "worker_count"
    t.integer "plant_month"
    t.integer "cost"
    t.bigint "rent_field_id"
    t.bigint "framing_data_id"
    t.datetime "expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["framing_data_id"], name: "index_field_plentings_on_framing_data_id"
    t.index ["rent_field_id"], name: "index_field_plentings_on_rent_field_id"
  end

  create_table "field_rent_datas", force: :cascade do |t|
    t.integer "rent_cost"
    t.integer "min_area"
    t.integer "max_area"
    t.bigint "environment_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_field_rent_datas_on_environment_id"
  end

  create_table "framing_datas", force: :cascade do |t|
    t.integer "palnting_cost"
    t.integer "worker_salary"
    t.integer "plant_month"
    t.integer "harvest_month"
    t.bigint "environment_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_framing_datas_on_environment_id"
  end

  create_table "get_loans", force: :cascade do |t|
    t.integer "get_month"
    t.bigint "loan_data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loan_data_id"], name: "index_get_loans_on_loan_data_id"
  end

  create_table "loan_datas", force: :cascade do |t|
    t.integer "value"
    t.integer "repay_in_month"
    t.integer "interest_percent"
    t.bigint "environment_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_loan_datas_on_environment_id"
  end

  create_table "pay_loans", force: :cascade do |t|
    t.integer "value"
    t.bigint "get_loan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["get_loan_id"], name: "index_pay_loans_on_get_loan_id"
  end

  create_table "product_datas", force: :cascade do |t|
    t.integer "name"
    t.string "product_function"
    t.bigint "framing_data_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["framing_data_id"], name: "index_product_datas_on_framing_data_id"
  end

  create_table "product_prices", force: :cascade do |t|
    t.integer "value"
    t.bigint "product_data_id"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_data_id"], name: "index_product_prices_on_product_data_id"
  end

  create_table "properties", force: :cascade do |t|
    t.bigint "company_id"
    t.string "data_type"
    t.bigint "data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_properties_on_company_id"
    t.index ["data_type", "data_id"], name: "index_properties_on_data_type_and_data_id"
  end

  create_table "rent_fields", force: :cascade do |t|
    t.integer "get_month"
    t.integer "rent_period"
    t.integer "area"
    t.integer "cost"
    t.bigint "field_rent_data_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_rent_fields_on_company_id"
    t.index ["field_rent_data_id"], name: "index_rent_fields_on_field_rent_data_id"
  end

  create_table "sell_properties", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_sell_properties_on_property_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "student_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role_type"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_type", "role_id"], name: "index_users_on_role_type_and_role_id"
  end

end
