class RostersController < ApplicationController
    def index
        @rosters = Roster.all
    end
end
