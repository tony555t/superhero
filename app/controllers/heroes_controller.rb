class HeroesController < ApplicationController

    def index
        heroes=Hero.all
        render json: heroes,stataus: :ok
    end
end
