class AddZipcodeToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :zipcode, :integer, limit: 4
  end
end
