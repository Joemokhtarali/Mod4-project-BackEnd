class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :image
      t.string :size
      t.integer :oxygen
      t.integer :carbon_dioxide
      t.integer :user_id
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end
