class CreateAtmospheres < ActiveRecord::Migration[6.0]
  def change
    create_table :atmospheres do |t|
      t.integer :oxygen
      t.integer :carbon_dioxide
      t.integer :temperature

      t.timestamps
    end
  end
end
