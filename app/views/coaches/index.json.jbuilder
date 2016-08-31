json.array!(@coaches) do |coach|
  json.extract! coach, :id, :name, :surname, :level, :birthday, :description, :phone, :email, :zip, :nationality, :gender, :avatar, :team_id
  json.url coach_url(coach, format: :json)
end
