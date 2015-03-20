class AddLongitudeToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :longitude, :float
  end
end
