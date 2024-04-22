delimiter $$
create function agregar_actor(nombre varchar(45), apeliidos varchar(45))
returns  int deterministic modifies sql data
begin
declare resu int;
declare actorid int;
    select max(actorid) into actorid from actor;
    set resu =actorid + 1;
    insert into actor(actor_id, first_name, last_name)
    values(resu, nombre, apellidos);
    return resu;

end$$

delimiter ;