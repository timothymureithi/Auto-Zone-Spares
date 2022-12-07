class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all 
        if @users
            render json: { users: @users}
        else
            render json: { status: 500, errors: ['Sorry, no users!'] }
            end
        end

end
