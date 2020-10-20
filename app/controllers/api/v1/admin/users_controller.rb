# frozen_string_literal: true

module Api
  module V1
    module Admin
      # app/controllers/api/v1/admin/users_controller.rb
      class UsersController < AdminsController
        def index
          render json: User.all
        end

        def create
          user = User.new(permited_params.merge(role: role))
          return render json: user if user.save

          render json: {
            success: false,
            response: user.errors,
          }
        rescue StandardError => e
          render json: {
            success: false,
            response: e.message,
          }
        end

        private

        def role
          case permited_params[:role][:name]
          when "Admin"
            ::Admin.create
          when "Teacher"
            ::Teacher.create
          when "Student"
            ::Student.create(student_number: permited_params[:role][:student_number])
          else
            raise "Wrong role name #{permited_params[:role][:name]}. Roles are: Admin, Teacher, Student"
          end
        end

        def permited_params
          @permited_params || params.require(:user).permit(:email, :first_name, :last_name, :password, role: %i(name student_number))
        end
      end
    end
  end
end
