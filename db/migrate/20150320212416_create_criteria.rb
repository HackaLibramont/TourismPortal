class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :type_of
      t.string :label
      t.integer :interest_id

      t.timestamps null: false
    end
  end
end
