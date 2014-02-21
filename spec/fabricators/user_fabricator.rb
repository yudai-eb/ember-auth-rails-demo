Fabricator :user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'
end

Fabricator :admin_user, class_name: User do
  email { sequence(:email) { |i| "foo#{i}@example.com"} }
  password 'foobarbaz'

  after_create do |admin_user|
    Fabricate(:admin_rolls_ability)
  end
end

