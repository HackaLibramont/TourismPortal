class InterestsController < Storytime::ApplicationController
  include InterestsFinder
  before_filter :get_interests, only: [:index, :map, :liked]
  before_filter :get_coordinates, only: [:index, :map, :liked]
  before_filter :define_title, only: [:index, :liked]
  def index
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def map

  end

  def liked

  end

  private

  def define_title
    @title = "Points d'intérêt"
    @title = category.label if category
    @title = "Mon carnet de voyage" if action_name == "liked"
  end
end
