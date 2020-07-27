class Api::V1::TeamsController < ApplicationController
    
    def index
        teams = Player.all
        render json: teams
    end 

    def show
        team = Team.find(params[:id])
        render json: team
    end

    # def teamrosters
    #     team = Team.find(params[:id])
    #     render json: team.rosters
    # end

    # def teamplayers
    #     team = Team.find(params[:id])
    #     render json: team.players
    # end


    

    def team_params
        params.require(:team).permit!
    end

end 