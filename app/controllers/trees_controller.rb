class TreesController < ApplicationController

    def index 
        trees = Tree.all
        render json: trees, except: [:created_at, :updated_at]
    end 

    def create 
        tree = Tree.create(tree_params)
        render json: tree
    end 

    def show 
        tree = Tree.find(params[:id])
        render json: tree
    end 


    def edit 
        @tree = Tree.find(params[:id])
      
        render json: @tree
    end 

    def update 
        @tree = Tree.find(params[:id])
        @tree.update(tree_params)
        render json: @tree
    end 

    def destroy 
        tree = Tree.find(params[:id])
        tree.destroy
    end 

    private
    
    def tree_params 
        params.require(:tree).permit(:size, :oxygen, :carbon_dioxide, :atmosphere_id, :image, :firewood)
    end 

end
