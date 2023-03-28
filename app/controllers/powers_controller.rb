class PowersController < ApplicationController
    def index
        powers =  Power.all
        render json: powers, only: [:id, :name, :description]
    end
    def show 
        power = Power.find_by(id: params[:id])
        if power
            render json: power
            else
                render json:{error:"power not"},status: :not_found
            end
        end

end
