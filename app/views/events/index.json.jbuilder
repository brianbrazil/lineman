json.array!(@events) do |event|
  json.extract! event, :id, :name, :startdate, :enddate
  json.url event_url(event, format: :json)
end
