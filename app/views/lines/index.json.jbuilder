json.array!(@lines) do |line|
  json.extract! line, :id, :name, :length
  json.url line_url(line, format: :json)
end
