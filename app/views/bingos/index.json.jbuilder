json.array!(@bingos) do |bingo|
  json.extract! bingo, :id, :name, :description, :picture
  json.url bingo_url(bingo, format: :json)
end
