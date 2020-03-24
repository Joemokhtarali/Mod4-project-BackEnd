class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :image, default: 'https://toppng.com/uploads/preview/ine-trees-silhouette-clipart-panda-pine-tree-vector-115630115124z9ezkopbw.png' 
      t.string :size, default: 'small'
      t.integer :oxygen, default: 3 
      t.integer :carbon_dioxide, default: -2
      t.integer :firewood, default: 0
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end
