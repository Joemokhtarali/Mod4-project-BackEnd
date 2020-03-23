class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :image
      t.string :size
      t.integer :oxygen, default: 3
      t.integer :carbon_dioxide, default: -2
      t.integer :firewood, default: 0
      t.integer :user_id
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end
