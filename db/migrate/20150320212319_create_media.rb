class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :interest_id
      t.string :type
      t.string :url

      t.timestamps null: false
    end
  end
end
