class AddStartTimeToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :start_time, :datetime
  end
end
