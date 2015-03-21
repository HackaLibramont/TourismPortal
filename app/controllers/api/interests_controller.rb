class Api::InterestsController < ApiController
  include InterestsFinder
  before_filter :get_interests, only: [:index, :map]

end
