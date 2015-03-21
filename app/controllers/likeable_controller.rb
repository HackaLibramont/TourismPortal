class LikeableController < Storytime::ApplicationController
  before_action :authenticate_user!

  def create
    current_user.like!(likeable)
    redirect_to :back, notice: "Ce lieu a été ajouté à votre carnet de voyage"
  end

  def destroy
    current_user.unlike!(likeable)
    redirect_to :back, notice: "Ce lieu a été supprimé de votre carnet de voyage"
  end

  private

  def likeable
    resource, id = request.path.split('/')[1, 2]
    @likeable = resource.singularize.classify.constantize.find(id)
    @likeable
  end

end
