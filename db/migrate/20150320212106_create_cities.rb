class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :zip
      t.string :city
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
