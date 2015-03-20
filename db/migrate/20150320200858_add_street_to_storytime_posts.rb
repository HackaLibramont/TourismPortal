class AddStreetToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :street, :string
  end
end
