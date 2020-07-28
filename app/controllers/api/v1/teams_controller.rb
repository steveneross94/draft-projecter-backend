class Api::V1::TeamsController < ApplicationController
    
    def index
        teams = Team.all
        render json: teams
    end 

    def show
        team = Team.find(params[:id])
        render json: team
    end

    def create
        team = Team.create(team_params)
        render json: team
    end

 

    def update
        team = Team.find(params[:id])
        team.update(team_params)
        render json: team
    end


    

    def team_params
        params.require(:team).permit!
    end

end 