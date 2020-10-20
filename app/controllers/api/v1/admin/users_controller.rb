# frozen_string_literal: true

module Api::V1::Admin
  class UsersController < AdminsController
    def index
      render jsonapi: User.all,
             class: {
               Admin: ::Api::V1::Admin::SerializableAdmin,
               Student: ::Api::V1::Admin::SerializableStudent,
               Teacher: ::Api::V1::Admin::SerializableTeacher,
               User: ::Api::V1::Admin::SerializableUser,
             },
             include: [:role]
    end

    def create
      user = User.new(permited_params.merge(role: role))

      if user.save
        render jsonapi: user,
               class: {
                 Admin: ::Api::V1::Admin::SerializableAdmin,
                 Student: ::Api::V1::Admin::SerializableStudent,
                 Teacher: ::Api::V1::Admin::SerializableTeacher,
                 User: ::Api::V1::Admin::SerializableUser,
               },
               include: [:role]
      else
        render jsonapi_errors: user.errors
      end
    rescue StandardError => e
      render jsonapi_errors: e.message
    end

    def update
      user = User.find_by(id: params[:id])

      if user.update(permited_params.merge(role: role))
        render jsonapi: user,
               class: {
                 Admin: ::Api::V1::Admin::SerializableAdmin,
                 Student: ::Api::V1::Admin::SerializableStudent,
                 Teacher: ::Api::V1::Admin::SerializableTeacher,
                 User: ::Api::V1::Admin::SerializableUser,
               },
               include: [:role]
      else
        render jsonapi_errors: user.errors
      end
    rescue StandardError => e
      render jsonapi_errors: e.message
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
