class AuthController < ApplicationController

    def login 
        user = User.find_by(name: params[:name])

        if user && user.authenticate(params[:password])
            render json: user
        else 
            render json: {errors: 'wrong name or password'}
        end 
    end 

    def auto_login
        # byebug
        user = User.find_by(id: request.headers['Authorization'])

        if user
            render json: user
        else
            render json: {errors: 'nope'} 
        end 
    end 

    
end 