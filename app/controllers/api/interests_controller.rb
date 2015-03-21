class Api::InterestsController < ApiController
  include InterestsFinder
  before_filter :get_interests, only: [:index, :map, :liked]

  def liked
    render action: :index
  end

end
