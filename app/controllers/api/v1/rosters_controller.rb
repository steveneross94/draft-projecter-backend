class Api::V1::RostersController < ApplicationController
    def index
        rosters = Roster.all
        render json: rosters
    end

end
