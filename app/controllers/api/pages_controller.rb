class Api::PagesController < ApiController
  def index
    @pages = Storytime::Page.all
  end
end
