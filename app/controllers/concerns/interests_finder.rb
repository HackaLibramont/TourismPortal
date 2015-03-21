module InterestsFinder
  extend ActiveSupport::Concern

  private

  def get_interests
    @interests = Interest.all
    @interests = @interests.where(category_id: category.id) if category
    @interests
  end

  def category
    @category ||= Category.find(params[:category_id]) if params[:category_id]
  end

end
