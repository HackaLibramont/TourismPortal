object @interest
attributes :id, :name, :description, :address, :zip, :mobile, :phone, :email, :website, :latitude, :longitude
child(:category) do
  attribute :id, :label
end
child(:city) do
  attribute :zip, :city, :coordinates
end
child(:criteria) do
  attribute :id, :label
end
child(:pictures => :pictures) do
  attribute :url
end
child(:videos => :videos) do
  attribute :url
end
