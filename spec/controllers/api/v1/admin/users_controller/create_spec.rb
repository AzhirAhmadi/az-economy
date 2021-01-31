require 'rails_helper'

RSpec.describe Api::V1::Admin::UsersController, type: :request do
  let(:headers) { { "Authorization": token } }
  let(:signed_in_user) { create(:admin_user, first_name: '1') }

  before(:each) do
    sign_in signed_in_user
  end

  describe 'POST #create' do
    it 'create amdin' do
      valid_params = {
        user: {
          email: 'admin@email.com',
          first_name: 'Azhir',
          last_name: 'Ahmadi',
          password: '1234567',
          role: {
            name: 'Admin',
          },
        },
      }

      post api_v1_admin_users_url(params: valid_params), headers: headers
      user = User.find_by(email: 'admin@email.com')

      expect(response).to have_http_status(:created)
      expect(json_data['id'].to_i).to eq(user.id)
      expect(json_data['attributes']['first_name']).to eq(user.first_name)
      expect(json_data['attributes']['last_name']).to eq(user.last_name)
      expect(json_data['attributes']['role_type']).to eq(user.role_type)
    end

    it 'create teacher' do
      valid_params = {
        user: {
          email: 'teacher@email.com',
          first_name: 'Azhir',
          last_name: 'Ahmadi',
          password: '1234567',
          role: {
            name: 'Teacher',
          },
        },
      }

      post api_v1_admin_users_url(params: valid_params), headers: headers
      user = User.find_by(email: 'teacher@email.com')

      expect(response).to have_http_status(:created)
      expect(json_data['id'].to_i).to eq(user.id)
      expect(json_data['attributes']['first_name']).to eq(user.first_name)
      expect(json_data['attributes']['last_name']).to eq(user.last_name)
      expect(json_data['attributes']['role_type']).to eq(user.role_type)
    end

    it 'create student' do
      valid_params = {
        user: {
          email: 'student@email.com',
          first_name: 'Azhir',
          last_name: 'Ahmadi',
          password: '1234567',
          role: {
            name: 'Student',
          },
        },
      }

      post api_v1_admin_users_url(params: valid_params), headers: headers
      user = User.find_by(email: 'student@email.com')

      expect(response).to have_http_status(:created)
      expect(json_data['id'].to_i).to eq(user.id)
      expect(json_data['attributes']['first_name']).to eq(user.first_name)
      expect(json_data['attributes']['last_name']).to eq(user.last_name)
      expect(json_data['attributes']['role_type']).to eq(user.role_type)
    end

    context 'invalid params' do
      it 'email' do
        invalid_params = {
          user: {
            email: 'invalid',
            first_name: 'Azhir',
            last_name: 'Ahmadi',
            password: '1234567',
            role: {
              name: 'Admin',
            },
          },
        }

        count = User.count
        post api_v1_admin_users_url(params: invalid_params), headers: headers
        new_count = User.count

        expect(response).to have_http_status(:unprocessable_entity)
        expect(new_count - count).to eq(0)
        expect(json_errors[0]['title']).to eq("Invalid email")
      end

      it 'role' do
        invalid_params = {
          user: {
            email: 'test@email.com',
            first_name: 'Azhir',
            last_name: 'Ahmadi',
            password: '1234567',
            role: {
              name: 'invalid',
            },
          },
        }

        count = User.count
        post api_v1_admin_users_url(params: invalid_params), headers: headers
        new_count = User.count

        expect(response).to have_http_status(:unprocessable_entity)
        expect(new_count - count).to eq(0)
        expect(json_errors[0]['title']).to eq("Invalid role")
      end

      it 'password' do
        invalid_params = {
          user: {
            email: 'test@email.com',
            first_name: 'Azhir',
            last_name: 'Ahmadi',
            password: '1',
            role: {
              name: 'Admin',
            },
          },
        }

        count = User.count
        post api_v1_admin_users_url(params: invalid_params), headers: headers
        new_count = User.count

        expect(response).to have_http_status(:unprocessable_entity)
        expect(new_count - count).to eq(0)
        expect(json_errors[0]['title']).to eq("Invalid password")
      end
    end
  end
end
