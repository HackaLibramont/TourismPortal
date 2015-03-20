class InterestsController < Storytime::ApplicationController
  before_filter :get_interests, only: :index
  before_filter :define_title, only: :index
  def index
  end

  def show
    @interest = Interest.find(params[:id])
  end

  private

  def get_interests
    @interests = Interest.all
    @interests = @interests.where(category_id: category.id) if category
    @interests
  end

  def define_title
    @title = "Points d'intérêt"
    @title = category.label if category
  end

  def category
    @category ||= Category.find(params[:category_id]) if params[:category_id]
  end
end
