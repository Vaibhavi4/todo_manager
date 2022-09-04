class UsersController < ApplicationController
    def new
        render "users/new"
    end

    def create
        User.create!(
            firstname: params[:firstname],
            lastname: params[:lastname],
            email: params[:email],
            password: params[:password]
        )
        redirect_to "/"
    end
end