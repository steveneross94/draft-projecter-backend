class Api::V1::RostersController < ApplicationController
    def index
        rosters = Roster.all
        render json: rosters
    end

    def create
        roster = Roster.create!(roster_params)
        render json: roster
    end

    def destroy
        roster = Roster.find(params[:id])
        roster.destroy!
        render json: {}
    end

    def show
        roster = Roster.find(params[:id])
        render json: roster
    end

    def update
        roster = Roster.find(params[:id])
        roster.update(roster_params)
        render json: roster
    end

    def roster_params
        params.require(:roster).permit!
    end

end
