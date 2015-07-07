class Note < ActiveRecord::Base


    has_many :team_notes
    has_many :teams, through: :team_notes



    def self.cammelcase_this_string(input_string)
        input_string.camelcase

    end








end
