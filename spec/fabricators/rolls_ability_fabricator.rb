Fabricator :admin_rolls_ability, class_name: RollsAbility do
  after_create do |admin_rolls_ability|
    Fabricate(:admin_roll, :id => admin_rolls_ability.roll_id)
    Fabricate(:admin_ability, :id => admin_rolls_ability.ability_id)
  end
end
