# app/controllers/hero_powers_controller.rb
class HeroPowersController < ApplicationController
    
    
    def index
        hero_power = HeroPower.all
        render json: hero_power
    end
    
    def create
        hero_power = HeroPower.new(hero_power_params)
        if hero_power.save
          render json: hero_power.hero.as_json(include: { powers: { only: [:id, :name, :description] } }, except: [:created_at, :updated_at])
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
    
    
   
  
    private
  
    def hero_power_params
      params.require(:hero_power).permit(:strength, :power_id, :hero_id)
    end
  end
  