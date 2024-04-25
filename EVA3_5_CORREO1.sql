delimiter $$
create procedure agregar_correos_actors()
begin
    declare terminar int default FALSE;
    declare val_actor_id int;
    declare val_last_name varchar(45);
    declare cons_actores cursor for select actor_id, last_name  from actor;
    declare continue handler for not found 

   begin
      set terminar = true;
    end;

open cons_actores;
        
        mostrar_todos_actores: loop
             fetch cons_actores into val_actor_id, val_last_name;
             
              if terminar then
                leave mostrar_todos_actores;
			  end if;
              
              update actor
              set correo = concat('e' , val_actor_id , '.' , val_last_name , '@pureba.com')
              where actor_id = val_actor_id;
              
        end loop;
        close cons_actores;
end$$
delimiter ;
