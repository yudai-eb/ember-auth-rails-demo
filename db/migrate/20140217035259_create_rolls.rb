class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
      t.string :roll_name

      t.timestamps
    end
  end
end
