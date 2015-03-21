class AddCityIdToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :source_id, :integer
    add_column :interests, :city_id, :integer
  end
end
