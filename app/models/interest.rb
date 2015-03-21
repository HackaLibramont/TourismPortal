class Interest < ActiveRecord::Base
  has_many :medium
  has_many :pictures
  has_many :videos
  has_many :criteria
  belongs_to :category
  belongs_to :city, foreign_key: :zip

  acts_as_likeable

  def has_pictures?
    self.pictures.any?
  end

  def coordinates
    [latitude, longitude]
  end
end
