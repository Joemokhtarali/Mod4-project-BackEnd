class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end 

    def show 
        user = User.find(params[:id])
        atmospheres = Atmosphere.all.select{ |a| a.user_id == user.id}
        
        render json: {id: user.id, atmospheres: atmospheres}
        
    end 

    def create 
        user = User.new(name: params[:name], password: params[:password])

        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end 

    end 

    def update 
        user = User.find(params [:id])
        user.update(user_params)
    end 

    def destroy 
        user = User.find(params[:id])
        user.destroy
    end 

    private
    
    def user_params 
        params.require(:user).permit(:name, :password)
    end 


    
end
