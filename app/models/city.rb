class City < ActiveRecord::Base
  self.primary_key = :zip
end
