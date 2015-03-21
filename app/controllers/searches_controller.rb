class SearchesController < Storytime::ApplicationController
  def create
    term        = params[:searches][:term]
    @title      = "Résultat de recherche : #{term}"
    @interests  = Interest.joins(:city).search_for(term)
    render "interests/index"
  end
end
