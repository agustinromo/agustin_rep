drop table if exists carrito; 
drop table if exists carrito_item;
drop table if exists cliente;
drop table if exists item;
drop table if exists item_proveedor; 
drop table if exists mcompra;
drop table if exists mpago; 
drop table if exists proveedor; 

/*================*/ 
/*Table:  Carrito */ 
/*================*/ 
create table carrito 
(carrito_id          int not null auto_increment, 
 cliente_id            int not null, 
  cliente_cuentaplatzi varchar(60) not null, 
  mpago_id             int not null, 
  mcompra_id           int not null, 
  mcompra_cod          numeric(15,0) not null, /*no se pueden poner decimales*/ 
  carrito_numitem      numeric(3,0) not null, /*pero esta bien no son necesarios*/
  carrito_dir          varchar(120),  
  carrito_coment       varchar(300),  
  carrito_tag          varchar(100), 
  primary key (carrito_id)  
); 

/*=====================*/ 
/* Table: Carrito_Item 
/*=====================*/ 
create table carrito_item
(
 item_id                 int not null,
 carrito_id              int not null, 
 cantidad                numeric(3,0) not null,
 primary key (item_id, carrito_id) 
 ); 
 
/*=====================*/ 
/* Table: Cliente 
/*=====================*/  
create table cliente 
(
 cliente_id              int(10) not null auto_increment, 
 cliente_cuentaplatzi    varchar(60) not null, 
 cliente_nombre          varchar(80) not null, 
 cliente_fechaini        timestamp not null, 
 cliente_correo          varchar(60), 
 cliente_fechanac        timestamp, 
 cliente_preferencias    varchar(300), 
 primary key (cliente_id, cliente_cuentaplatzi) 
 ); 
 
/*=====================*/ 
/* Table: Item 
/*=====================*/ 
create table item 
(
   item_id               int not null auto_increment, 
   item_nombre           varchar(60) not null, 
   item_desc             varchar(300) not null, 
   item_medidas          varchar(60) not null, 
   item_peso             varchar(15) not null,  
   item_foto             longblob, 
   primary key (item_id) 
);  

/*=====================*/ 
/* Table: Item_proveedor 
/*=====================*/  
create table item_proveedor 
(
   prov_id               numeric(5,0) not null, 
   prov_codcc            varchar(15) not null comment 'codigo camara de comercio', 
   item_id               int not null, 
   lote                  varchar(10) not null, 
   primary key (prov_id, prov_codcc, item_id) 
); 

/*=====================*/ 
/* Table: mcompra 
/*=====================*/ 
create table mcompra
(
   mcompra_id             int not null auto_increment,
   mcompra_cod            numeric(15,0) not null, 
   mcompra_metodo         varchar(250) not null, 
   mcompra_fechaini       timestamp not null, 
   mcompra_dir            varchar(120), 
   primary key (mcompra_id, mcompra_cod)  
); 

/*=====================*/ 
/* Table: mpago
/*=====================*/ 
create table mpago 
(
   mpago_id               int not null auto_increment, 
   mpago_tipo             varchar(250) not null, 
   mpago_codpasarela      varchar(15) not null,    
   mpago_fechaexpira      timestamp not null, 
   primary key (mpago_id) 
); 

/*=====================*/ 
/* Table: proveedor
/*=====================*/  
create table proveedor
(
   prov_id                 numeric(5,0) not null, 
   prov_codcc              varchar(15) not null comment 'codigo camara de comercio',
   prov_nombre             varchar(90) not null, 
   prov_desc               varchar(300) not null, 
   prov_fechaini           timestamp not null, 
   prov_fechaucompra       timestamp, 
   prov_montoucompra       numeric(7,0), 
   prov_moneda             varchar(5), 
   primary key (prov_id, prov_codcc) 
); 

alter table carrito add constraint FK_carrito_cliente foreign key(cliente_id,
cliente_cuentaplatzi) references (cliente_id,cliente_cuentaplatzi) on 
delete restrict on update restrict;


 
 
 
 
 
 
 