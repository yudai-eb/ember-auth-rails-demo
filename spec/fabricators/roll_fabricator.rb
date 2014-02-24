Fabricator :admin_roll, class_name: Roll do
  roll_name '管理者'

  after_create do |admin_roll|
    Fabricate(:rolls_ability, :roll_id => admin_roll.id, :ability_id => Fabricate(:admin_ability).id)
  end
end

Fabricator :roll_has_many_abilities, class_name: Roll do
  roll_name 'ベテランオペレーター'

  after_create do |roll_has_many_abilities|
    Fabricate(:rolls_ability, :roll_id => roll_has_many_abilities.id, :ability_id => Fabricate(:create_user).id)
    Fabricate(:rolls_ability, :roll_id => roll_has_many_abilities.id, :ability_id => Fabricate(:add_ability).id)
  end
end

