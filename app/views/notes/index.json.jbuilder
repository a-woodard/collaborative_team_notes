json.array!(@notes) do |note|
  json.extract! note, :id, :name, :title, :image, :content
  json.url note_url(note, format: :json)
end
