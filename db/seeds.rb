Post.create([
  { title: 'post 1' },
  { title: 'post 2' },
  { title: 'post 3' }
])

Roll.create([
  { roll_name: '管理者', created_at: Time.now, updated_at: Time.now },
  { roll_name: '一般ユーザー', created_at: Time.now, updated_at: Time.now }
])

RollAbilityName.create([
  { roll_id: 1, ability_name_id: 1, created_at: Time.now, updated_at: Time.now },
  { roll_id: 2, ability_name_id: 2, created_at: Time.now, updated_at: Time.now }
])

AbilityName.create([
  { ability_name: 'admin', created_at: Time.now, updated_at: Time.now },
  { ability_name: 'normal', created_at: Time.now, updated_at: Time.now }
])

User.create([
  { email: 'foo@example.com', password: 'foopassword', roll_id: 1 },
  { email: 'bar@example.com', password: 'barpassword', roll_id: 2 }
])
