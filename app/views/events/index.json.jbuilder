json.array!(@events) do |event|
  json.extract! event, :id, :title, :memo, :genre, :place, :image
  json.start event.begin_time
  json.end event.finish_time
  json.url event_url(event, format: :html)
end