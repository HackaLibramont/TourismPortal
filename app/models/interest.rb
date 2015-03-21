class Interest < ActiveRecord::Base
  has_many :medium
  has_many :pictures
  has_many :videos
  belongs_to :category
  belongs_to :city, foreign_key: :zip

  def has_pictures?
    self.pictures.any?
  end

  def coordinates
    [latitude, longitude]
  end
end
