json.array!(@team_notes) do |team_note|
  json.extract! team_note, :id, :team_id, :note_id
  json.url team_note_url(team_note, format: :json)
end
