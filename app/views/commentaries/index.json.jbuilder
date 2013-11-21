json.array!(@commentaries) do |commentary|
  json.extract! commentary, :content, :user_id
  json.url commentary_url(commentary, format: :json)
end
