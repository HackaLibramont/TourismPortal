class AddCityToStorytimePosts < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :city, :string
  end
end
