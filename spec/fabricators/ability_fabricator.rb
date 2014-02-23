Fabricator :admin_ability, class_name: Ability do
  ability_name 'admin'

  after_create do |admin_ability|
    Fabricate(:admin_rolls_ability, :ability_id => admin_ability.id, :roll_id => Fabricate(:admin_roll).id )
  end
end
