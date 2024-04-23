delimiter $$
create procedure consulta_actor(in actorid int)
begin
   select * from actor
   where actor_id = actorid;
end$$

delimiter ;