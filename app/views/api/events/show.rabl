object @event
attributes :id, :title, :excerpt, :content, :published_at, :start_time, :end_time, :street, :zipcode, :city, :coordinates
node(:start) do |e|
  e.start_time
end
node(:end) do |e|
  e.end_time
end
node(:url) do |e|
  "/events/#{e.id}"
end
