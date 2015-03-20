class Api::PostsController < ApiController
  def index
    @posts = Storytime::BlogPost.all
  end
end
