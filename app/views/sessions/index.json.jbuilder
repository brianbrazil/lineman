json.array!(@sessions) do |line|
  json.extract! line, :id, :name, :line_length
  json.url line_url(line, format: :json)
end
