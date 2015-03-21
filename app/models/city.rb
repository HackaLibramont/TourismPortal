class City < ActiveRecord::Base
  self.primary_key = :zip

  def coordinates
    [latitude, longitude]
  end
end
