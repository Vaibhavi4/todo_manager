class UsersController < ApplicationController
    def new
        render "users/new"
    end

    def create
        User.create!(
            firstname: params[:first_name],
            lastname: params[:last_name],
            email: params[:email],
            password: params[:password]
        )
        redirect_to "/"
    end
end