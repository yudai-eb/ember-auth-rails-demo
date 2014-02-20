truncate table ability_names;
truncate table posts;
truncate table roll_ability_names;
truncate table rolls;
truncate table users;

select setval ('ability_names_id_seq', 1, false);
select setval ('posts_id_seq', 1, false);
select setval ('roll_ability_names_id_seq', 1, false);
select setval ('rolls_id_seq', 1, false);
select setval ('users_id_seq', 1, false);
