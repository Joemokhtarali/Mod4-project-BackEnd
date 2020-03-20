class AtmospheresController < ApplicationController

    def index 
        atmosphere = Atmosphere.all
        render json: atmospheres, except: [:created_at, :updated_at]
    end 
end
