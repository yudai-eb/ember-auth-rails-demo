Fabricator :admin_user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
  roll_id { Fabricate(:admin_roll).id }
end

Fabricator :user_has_many_rolls, class_name: User do
  email { sequence(:email) { |i| "bar#{i}@example.com"} }
  password 'barbarbaz'
  roll_id { Fabricate(:roll_has_many_abilities).id }
end

