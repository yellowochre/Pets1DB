json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :owner_id
  json.url dog_url(dog, format: :json)
end
