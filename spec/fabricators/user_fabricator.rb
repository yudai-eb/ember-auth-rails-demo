Fabricator :user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
end

Fabricator :admin_user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
  roll_id 1

  after_create do
    Fabricate(:admin_roll)
    Fabricate(:admin_rolls_ability)
    Fabricate(:admin_ability)
  end
end
