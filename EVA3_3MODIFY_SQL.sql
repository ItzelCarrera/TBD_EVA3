delimiter $$
create function contar_actores;
returns int reads sql data
begin
    declare cont int;
    select count(*) into count from actor;
    return cont;
    
end$$
delimiter ;    