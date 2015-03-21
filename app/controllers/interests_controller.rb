class InterestsController < Storytime::ApplicationController
  include InterestsFinder
  before_filter :get_interests, only: [:index, :map]
  before_filter :define_title, only: :index
  def index
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def map
    @coordinates = Geocoder.search("Arlon").first.coordinates
  end

  def liked
    @interests = current_user.likeables(Interest)
    @title = "Mon carnet de voyage"
  end

  private

  def define_title
    @title = "Points d'intérêt"
    @title = category.label if category
  end
end
