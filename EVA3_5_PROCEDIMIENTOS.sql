DELIMITER $$
CREATE procedure insertar_actor(in nombre varchar(45), in apellidos varchar(45)) 
  
begin
declare resu int;
declare actorid int;
    select max(actorid) into actorid from actor;
    set resu =actorid + 1;
    insert into actor(actor_id, first_name, last_name)
    values(resu, nombre, apellidos);

end$$
DELIMITER ;
