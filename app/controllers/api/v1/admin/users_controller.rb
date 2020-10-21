# frozen_string_literal: true

module Api::V1::Admin
  class UsersController < AdminsController
    before_action :set_user, only: %i(show update destroy)

    def index
      render jsonapi: User.all,
             class: {
               Admin: ::Api::V1::Admin::SerializableAdmin,
               Student: ::Api::V1::Admin::SerializableStudent,
               Teacher: ::Api::V1::Admin::SerializableTeacher,
               User: ::Api::V1::Admin::SerializableUser,
             },
             include: [:role],
             status: :ok
    end

    def show
      render jsonapi: @user,
             class: {
               Admin: ::Api::V1::Admin::SerializableAdmin,
               Student: ::Api::V1::Admin::SerializableStudent,
               Teacher: ::Api::V1::Admin::SerializableTeacher,
               User: ::Api::V1::Admin::SerializableUser,
             },
             include: [:role],
             status: :ok
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
               include: [:role],
               status: :created
      else
        render jsonapi_errors: user.errors, status: :unprocessable_entity
      end
    end

    def update
      if @user.update(permited_params.merge(role: role))
        render jsonapi: @user,
               class: {
                 Admin: ::Api::V1::Admin::SerializableAdmin,
                 Student: ::Api::V1::Admin::SerializableStudent,
                 Teacher: ::Api::V1::Admin::SerializableTeacher,
                 User: ::Api::V1::Admin::SerializableUser,
               },
               include: [:role],
               status: :ok
      else
        render jsonapi_errors: @user.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if @user.destroy
        render jsonapi: nil, status: :ok
      else
        render jsonapi_errors: @user.errors, status: :unprocessable_entity
      end
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

    def set_user
      @user = User.find_by(id: params[:id])
      return render_user_not_found unless @user.present?
    end

    def render_user_not_found
      render jsonapi_errors: { title: 'User not found',
                               detail: "User with id: #{params[:id]} was not found!" }
    end
  end
end
