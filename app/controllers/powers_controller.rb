class PowersController < ApplicationController
    def index
        powers =  Power.all
        render json: powers, only: [:id, :name, :description]
    end
    

end
