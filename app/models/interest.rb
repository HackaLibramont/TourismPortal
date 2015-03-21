class Interest < ActiveRecord::Base
  has_many :medium
  has_many :pictures
  has_many :videos
  has_many :criteria
  belongs_to :category
  belongs_to :city, foreign_key: :zip


  scoped_search on: [:name, :description, :address, :website]
  scoped_search in: :city, on: [:city]
  scoped_search in: :category, on: [:label]

  acts_as_likeable

  def has_pictures?
    self.pictures.any?
  end

  def coordinates
    [latitude, longitude]
  end

  def city_name
    city.name
  end
end
