class CreateAtmospheres < ActiveRecord::Migration[6.0]
  def change
    create_table :atmospheres do |t|
      t.integer :oxygen, default: 30 
      t.integer :carbon_dioxide, default: 25
      t.integer :user_id
      t.timestamps
    end
  end
end
