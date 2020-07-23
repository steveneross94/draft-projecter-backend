class Roster < ApplicationRecord
    belongs_to :players
    belongs_to :teams
    
end