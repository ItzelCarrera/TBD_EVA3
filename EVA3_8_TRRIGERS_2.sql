delimiter $$
create trigger insert_actor before  insert on actor for each row
begin
   declare actorid int;
   select genarar_actorid() into actorid;
   
   set  new.actor_id = actorid;

end$$
delimiter ;