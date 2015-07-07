class TeamNote < ActiveRecord::Base


    # tn = TeamNote.new
    # tn.team_id = 5
    # tn.note_id = 7
    # tn.save

    # Assume that there is no Team with id = 5 and no Note with id = 7. 
    # These commands should result in an error because you are referencing something that doesnt exist




    belongs_to :teams
    belongs_to :note



end
