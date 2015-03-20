class AddEndTimeToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :end_time, :datetime
  end
end
