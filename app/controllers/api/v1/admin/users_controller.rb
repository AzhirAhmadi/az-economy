module Api::V1::Admin
    class UsersController < AdminsController
        def index
            render json: User.all
        end
    end
end