class CreateRollsAbilities < ActiveRecord::Migration
  def change
    create_table :rolls_abilities do |t|
      t.integer :roll_id
      t.integer :ability_id

      t.timestamps
    end

    add_index :rolls_abilities, :roll_id, :name => 'idx_roll_id'
    add_index :rolls_abilities, :ability_id, :name => 'idx_ability_id'
  end
end
