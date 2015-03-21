class Api::CategoriesController < ApiController
  def index
    @categories = Category.root
  end
end
