class Interest < ActiveRecord::Base
  has_many :medium
  has_many :pictures
  has_many :videos
  belongs_to :category
  belongs_to :city, foreign_key: :zip

  %w(pictures videos).each do |medium_type|
    define_method "has_#{medium_type}?" do
      medium_type.send(:length) > 1
    end
  end

  def coordinates
    [latitude, longitude]
  end
end
