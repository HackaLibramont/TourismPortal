class AddLatitudeToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :latitude, :float
  end
end
