class CreateRollAbilityNames < ActiveRecord::Migration
  def change
    create_table :roll_ability_names do |t|
      t.integer :roll_id
      t.integer :ability_name_id

      t.timestamps
    end
  end
end
