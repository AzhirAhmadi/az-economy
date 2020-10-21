require 'rails_helper'

RSpec.describe Api::V1::Admin::UsersController, type: :request do
  let(:headers) { { "Authorization": token } }
  let(:user) { create(:admin_user) }

  before(:each) do
    sign_in user
  end

  describe 'GET #index' do
    it 'get all users' do
      create_list(:admin_user, 3)
      create_list(:teacher_user, 3)
      create_list(:student_user, 3)

      get api_v1_admin_users_url, headers: headers

      expect(response).to have_http_status(:ok)
      expect(json_data.count).to eq(9 + 1)
    end
  end
end
