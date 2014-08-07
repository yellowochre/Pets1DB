json.array!(@pet_clubs) do |pet_club|
  json.extract! pet_club, :id, :name
  json.url pet_club_url(pet_club, format: :json)
end
