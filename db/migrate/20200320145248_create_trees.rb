class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :image, default: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2016%2F09%2F29%2F02%2F45%2Ftree-1702020_960_720.png' 
      t.string :size, default: 'small'
      t.integer :oxygen, default: 3 
      t.integer :carbon_dioxide, default: -2
      t.integer :firewood, default: 0
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end


# new png image for tree
#  https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2016%2F09%2F29%2F02%2F45%2Ftree-1702020_960_720.png