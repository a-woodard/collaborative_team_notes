class CreateTeamNotes < ActiveRecord::Migration
  def change
    create_table :team_notes do |t|
      t.integer :team_id
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
