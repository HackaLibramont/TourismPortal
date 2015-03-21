class AgendaController < Storytime::ApplicationController
  def index
    @events = Event.all
  end
end
