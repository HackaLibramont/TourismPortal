class Storytime::PostsController < ::Storytime::ApplicationController

  def index
    @posts = if params[:post_type]
      klass = Storytime.post_types.find{|post_type| post_type.constantize.type_name == params[:post_type].singularize }
      klass.constantize.all
    else
      Post.primary_feed
    end

    @posts = Storytime.search_adapter.search(params[:search], get_search_type) if (params[:search] && params[:search].length > 0)

    @posts = @posts.tagged_with(params[:tag]) if params[:tag]
    @posts = @posts.published.order(published_at: :desc).page(params[:page])

    if params[:post_type] == "events"
      render "/events/index" and return
    else
      respond_to do |format|
        format.atom
        format.html
      end
    end
  end

end
