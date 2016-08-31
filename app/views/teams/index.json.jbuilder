json.array!(@teams) do |team|
  json.extract! team, :id, :name, :category, :club, :avatar, :practice_address, :game_address, :phone, :email
  json.url team_url(team, format: :json)
end
