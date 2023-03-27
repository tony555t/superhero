class HeroesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        heroes=Hero.all
        render json: heroes.to_json(except:[:created_at, :updated_at])
    end

    def show 
        hero = Hero.find_by(id: params[:id])
        if hero 
            render json: hero, status: :ok
        else 
            render json: { error: "Hero not found" }, status: :not_found
        end
    end
  

end
