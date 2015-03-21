module InterestsFinder
  extend ActiveSupport::Concern

  private

  def get_coordinates
    @coordinates = Geocoder::Calculations.geographic_center(@interests.map(&:coordinates))
  end

  def get_interests
    @interests = Interest.all
    @interests = @interests.where(category_id: category.id) if category
    @interests = current_user.likeables(Interest)           if action_name == "liked"
    @interests = Interest.joins(:city).search_for(term)     if search_term
    @interests
  end

  def category
    @category ||= Category.find(params[:category_id]) if params[:category_id]
  end

  def search_term
    @search_term ||= params[:search_term]
  end

end
