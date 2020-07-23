class Api::V1::PlayersController < ApplicationController
    
    def index
        players = Player.all
        render json: players
    end 

    def create
        player = Player.create!(player_params)
        render json: player
    end

    def destroy
        player = Player.find(params[:id])
        player.destroy!
        render json: {}
    end


    

    def player_params
        params.require(:player).permit!
    end

end 

