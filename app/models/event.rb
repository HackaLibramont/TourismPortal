class Event < Storytime::Post
  class_eval do
    geocoded_by :full_street_address
    after_validation :geocode
  end

  def full_street_address
    "#{street} #{zipcode} #{city}"
  end

  def show_comments?
    false
  end

  def self.included_in_primary_feed?
    false
  end

  def coordinates
    [latitude, longitude]
  end
end
