require 'rails_helper'

RSpec.describe Api::V1::Admin::UsersController, type: :request do
  let(:headers) { { "Authorization": token } }
  let(:signed_in_user) { create(:admin_user) }

  before(:each) do
    sign_in signed_in_user
  end

  describe 'GET #show' do
    it 'get user' do
      user = create(:admin_user)

      get api_v1_admin_user_url(user), headers: headers

      expect(response).to have_http_status(:ok)
      expect(json_data['id'].to_i).to eq(user.id)
    end
  end
end
