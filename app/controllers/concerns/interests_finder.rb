module InterestsFinder
  extend ActiveSupport::Concern

  private

  def get_coordinates
    @coordinates = Geocoder::Calculations.geographic_center(@interests.map(&:coordinates))
  end

  def get_interests
    @interests = Interest.where('category_id != ?', Category.tec_id).where('latitude > ?', 0.0).limit(100).all
    @interests = @interests.where(category_id: category.id)    if category
    @interests = current_user.likeables(Interest)              if action_name == "liked"
    @interests = Interest.joins(:city).search_for(search_term) if search_term
    @interests
  end

  def category
    @category ||= Category.find(params[:category_id]) if params[:category_id]
  end

  def search_term
    @search_term ||= params[:searches] ? params[:searches][:term] : nil
  end

end
