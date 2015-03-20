class Api::EventsController < ApiController
  def index
    @events = Event.all
  end
end
