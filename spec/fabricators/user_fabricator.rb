Fabricator :user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
end

Fabricator :admin_user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
  roll_id { Fabricate(:admin_ability).rolls_abilities[0].ability_id }
end

