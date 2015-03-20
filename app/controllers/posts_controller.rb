
  Storytime::PostsController.class_eval do
    def index
      raise "foo"
    end
  end
