class AtmospheresController < ApplicationController

    def index 
        atmospheres = Atmosphere.all
        render json: atmospheres, except: [:created_at, :updated_at] 
    end 

    # def create 
    #     user = User.new(name: params[:name], password: params[:password])

    def create 
        atmosphere = Atmosphere.create(atmosphere_params)
        trees = 10.times do Tree.create(atmosphere_id: atmosphere.id)
         end 
        render json: atmosphere, include: [:trees]
    end 

    def show 
        atmosphere = Atmosphere.find(params[:id])
        trees = Tree.all.select { |tree| tree.atmosphere_id == atmosphere.id}
        render json: {id: atmosphere.id, oxygen: atmosphere.oxygen, carbon_dioxide: atmosphere.carbon_dioxide, trees: trees}
    end 

    private
    
    def atmosphere_params 
        params.require(:atmosphere).permit(:user_id, :oxygen, :carbon_dioxide)
    end 


end



