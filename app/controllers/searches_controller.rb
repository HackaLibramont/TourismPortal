class SearchesController < Storytime::ApplicationController
  include InterestsFinder
  before_filter :get_interests, only: :create
  before_filter :get_coordinates, only: :create
  before_filter :define_title, only: :create


  def create
    render "interests/index"
  end

  private

  def define_title
    @title      = "Résultat de recherche : #{params[:searches][:term]}"
  end
end
