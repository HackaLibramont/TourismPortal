class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :cgt_code
      t.string :name
      t.text :description
      t.string :address
      t.integer :zip
      t.string :mobile
      t.string :phone
      t.string :email
      t.string :website
      t.float :latitude
      t.float :longitude
      t.string :source
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
