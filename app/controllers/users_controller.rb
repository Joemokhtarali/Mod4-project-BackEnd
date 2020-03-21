class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end 

    def show 
        user = User.find(params[:id])
        trees = Tree.all.select { |tree| tree.user_id == user.id}
        

        render json: {id: user.id, name: user.name, trees: trees}
    end 

    def create 
        user = User.create(user_params)

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
