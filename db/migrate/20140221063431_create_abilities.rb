class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :ability_name

      t.timestamps
    end
  end
end
