create table pasajero
(
pasajero_id int not null 
auto_increment, 
nombre_p varchar(30) not null, 
pasaporte varchar(15), 
contactoemergencia varchar(40) not null, 
 primary key (pasajero_id) 
 );
 
 create table aerolinea_pasajero
 (
 pasajero_id int not null, 
 aerolinea_id int not null, 
 viajerofrecuente numeric(12,0), 
 primary key (pasajero_id, aerolinea_id)
 ); 
 
 alter table aeroliena_pasajero add 
 constraint FK_aerolinea_pasajero 
 foreign key (pasajero_id) 
 references pasajero(pasajero_id);
