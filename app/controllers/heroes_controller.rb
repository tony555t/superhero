class HeroesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        heroes=Hero.all
        render json: heroes.to_json(except:[:created_at, :updated_at])
    end
    def show
        hero = Hero.includes(:powers).find_by(id: params[:id])
        if hero.present?
          render json: hero.as_json(include: { powers: { only: [:id, :name, :description] } })
        else
          render json: { error: 'Hero not found' }, status: :not_found
        end
      end
  

end
