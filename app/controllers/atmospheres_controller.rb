class AtmospheresController < ApplicationController

    def index 
        atmospheres = Atmosphere.all
        render json: atmospheres, except: [:created_at, :updated_at]
    end 

end
