object @event
attributes :id, :title, :excerpt, :content, :street, :zipcode, :city, :coordinates

node(:start) do |e|
  e.start_time
end

node(:end) do |e|
  e.end_time
end

node(:url) do |e|
  "/events/#{e.id}"
end

node(:start_time) do |e|
  e.start_time.to_s(:db)
end

node(:end_time) do |e|
  e.start_time.to_s(:db)
end

node(:published_at) do |e|
  e.start_time.to_s(:db)
end
