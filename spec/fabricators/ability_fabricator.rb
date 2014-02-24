Fabricator :admin_ability, class_name: Ability do
  ability_name 'admin'
end

Fabricator :create_user, class_name: Ability do
  ability_name 'create_user'
end

Fabricator :add_ability, class_name: Ability do
  ability_name 'add_ability'
end
