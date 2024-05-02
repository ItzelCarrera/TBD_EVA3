DELIMITER $$
create function generar_actorid()
 RETURNS int reads SQL DATA
    
begin
    declare resu int;
    declare actorid int;
    
    select max(actorid) into actorid  from actor;
    if actorid = null then
    set resu =0;
    end if;
    
    set resu = actorid +1;
    return resu;
end$$
DELIMITER ;
