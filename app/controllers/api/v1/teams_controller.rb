class Api::V1::TeamsController < ApplicationController
    
    def index
        teams = Player.all
        render json: teams
    end 



    

    def team_params
        params.require(:team).permit!
    end

end 