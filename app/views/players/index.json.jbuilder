json.array!(@players) do |player|
  json.extract! player, :id, :name, :surname, :position, :birthday, :height, :weight, :description, :phone, :email, :zip, :nationality, :gender, :team_id
  json.url player_url(player, format: :json)
end
