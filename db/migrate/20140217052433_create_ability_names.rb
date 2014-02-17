class CreateAbilityNames < ActiveRecord::Migration
  def change
    create_table :ability_names do |t|
      t.string :ability_name

      t.timestamps
    end
  end
end
