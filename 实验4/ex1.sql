create user user1 identified by user1;

grant create session to user1;
grant unlimited tablespace to user1;

grant select on Students to user1;
grant select on Classifications to user1;
grant select on Borrows to user1;
grant select on Books to user1;
grant insert on Students to user1;
grant insert on Classifications to user1;
grant insert on Borrows to user1;
grant insert on Books to user1;
grant update on Students to user1;
grant update on Classifications to user1;
grant update on Borrows to user1;
grant update on Books to user1;
