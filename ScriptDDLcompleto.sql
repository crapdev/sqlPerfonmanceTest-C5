-- create database bd_cristian_albor_cumbia;
-- use bd_cristian_albor_cumbia;


create table riwi_clients(
    id int auto_increment primary key,
    name varchar(150)
);
truncate table riwi_clients;
INSERT INTO riwi_clients (name) VALUES
('acme ltda'),
('innova sas'),
('novatech'),
('biohealth'),
('softcorp'),
('vision sa'),
('retailone'),
('educenter'),
('healthplus'),
('megafoods');


create table riwi_technicians(
    id smallint auto_increment primary key,
    full_name varchar(150)
);
INSERT INTO riwi_technicians (full_name) VALUES
('juan perez'),
('maria gomez'),
('carlos ruiz'),
('laura diaz'),
('andres mora');



create table riwi_servicetypes(
    id smallint auto_increment primary key,
    name varchar(100)
);
INSERT INTO riwi_servicetypes (name) VALUES
('corrective'),
('preventive');


create table riwi_branches(
    id smallint auto_increment primary key,
    name varchar(100)
);
INSERT INTO riwi_branches (name) VALUES
('north office'),
('headquarters'),
('west'),
('main'),
('coast'),
('coffee'),
('east office'),
('north east'),
('central office'),
('caribbean');


create table riwi_cities(
    id smallint auto_increment primary key,
    name varchar(100)
);
INSERT INTO riwi_cities (name) VALUES
('bogota'),
('medellin'),
('cali'),
('barranquilla'),
('cartagena'),
('pereira'),
('bucaramanga'),
('cucuta'),
('manizales'),
('santa marta');

--
create table riwi_categories(
    id smallint auto_increment primary key,
    name varchar(100)
);
INSERT INTO riwi_categories (name) VALUES
('laptop'),
('desktop'),
('network'),
('printer');

create table riwi_equipments(
    id int auto_increment primary key,
    name varchar(200),
    id_equipments_category smallint,
    
    constraint fk_equipments_categories
    foreign key (id_equipments_category)
        references riwi_categories(id)
        on delete set null
        on update cascade
);
INSERT INTO riwi_equipments (name, id_equipments_category) VALUES
('canon printer pixma', 4),
('cisco switch 2960', 3),
('dell latitude 5420', 1),
('hp prodesk', 2),
('lenovo thinkpad',1);

--
create table riwi_orders(
    workorder varchar(100) primary key,
    id_client int,
    id_equipments int,
    id_branch smallint,
    id_city smallint,
    id_technician smallint,
    id_servicetype smallint,
    servicedate date,
    hours smallint,
    cost decimal(10,2),
    
    
    constraint fk_orders_client
    foreign key (id_client)
        references riwi_clients(id)
        on delete set null
        on update cascade,
	
    constraint fk_orders_equipments
    foreign key (id_equipments)
        references riwi_equipments(id)
        on delete set null
        on update cascade,
        
	constraint fk_orders_branches
    foreign key (id_branch)
        references riwi_branches(id)
        on delete set null
        on update cascade,

	constraint fk_orders_cities
    foreign key (id_city)
        references riwi_cities(id)
        on delete set null
        on update cascade,
        
	constraint fk_orders_technicians
    foreign key (id_technician)
        references riwi_technicians(id)
        on delete set null
        on update cascade,
        
	constraint fk_orders_servicetypes
    foreign key (id_servicetype)
        references riwi_servicetypes(id)
        on delete set null
        on update cascade

);





