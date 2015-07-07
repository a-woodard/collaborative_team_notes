class Team < ActiveRecord::Base


    has_many :team_notes
    has_many :notes, through: :team_notes



    



end
