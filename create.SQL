create table if not exists gallery(
g_id int primary key,
g_name char(50),
g_city char(20),
manager_id int;
constraint fk FOREIGN KEY(manager_id)REFERENCES employee(emp_id)
g_pin int
);



create table if not exists employee(
emp_id int primary key,
emp_name char(50),
emp_join_date date);
alter table employee add column g_id int;
alter table employee add constraint ap_fk FOREIGN KEY(g_id)REFERENCES gallery(g_id);

create table if not exists address_type(
addr_id int primary key,
addr_type char(20));

create table if not exists zip(
zipcode int primary key,
city char(30),
state char(20),
country char(20));

create table if not exists emp_addr(
emp_id int,
addr_id int,
street char(100),
zipcode int,
constraint ei_fk FOREIGN KEY(emp_id) REFERENCES employee(emp_id),
constraint ai_fk FOREIGN KEY(addr_id) REFERENCES address_type(addr_id),
constraint zi_fk FOREIGN KEY(zipcode)REFERENCES zip(zipcode),
primary key(emp_id,addr_id));

create table if not exists artist(
artist_id int primary key,
artist_name char(50),
place_of_birth char(50),
style_of_art char(20));

create table if not exists art(
art_id int primary key,
unique_title char(50),
year_it_was_made year,
type_of_art char(20),
height int,
width int,
material char(20),
artist_id int,
constraint ar_fk FOREIGN KEY(artist_id) REFERENCES artist(artist_id));

alter table art add column height int;
alter table art add column width int;
alter table art add column material char(20);

create table if not exists customer(
customer_id int primary key,
customer_name char(50)
);


create table if not exists cus_addr(
customer_id int,
addr_id int,
street char(100),
zipcode int,
constraint mi_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
constraint bi_fk FOREIGN KEY(addr_id) REFERENCES address_type(addr_id),
constraint ci_fk FOREIGN KEY(zipcode)REFERENCES zip(zipcode),
primary key(customer_id,addr_id));


create table if not exists group_s(
group_id int primary key,
group_name char(20));

create table if not exists maintains(
g_id int,
art_id int,
constraint g_fk FOREIGN KEY(g_id) REFERENCES gallery(g_id),
constraint ak_fk FOREIGN KEY(art_id) REFERENCES art(art_id),
primary key(g_id,art_id));

create table if not exists classified(
art_id int,
group_id int,
constraint a_fk FOREIGN KEY(art_id) REFERENCES art(art_id),
constraint r_fk FOREIGN KEY(group_id) REFERENCES group_s(group_id),
primary key(art_id,group_id));

create table if not exists offer(
offer_id int primary key,
vision char(20));

create table if not exists place(
g_id int,
offer_id int,
constraint gr_fk FOREIGN KEY(g_id) REFERENCES gallery(g_id),
constraint or_fk FOREIGN KEY(offer_id) REFERENCES offer(offer_id),
primary key(g_id,offer_id));


create table if not exists contains(
g_id  int,
customer_id int,
constraint gl_fk FOREIGN KEY(g_id) REFERENCES gallery(g_id),
constraint cr_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
primary key(g_id,customer_id));

create table if not exists dealer(
artist_id int,
dealer_id int,
constraint at_fk FOREIGN KEY(artist_id) REFERENCES 
artist(artist_id),
constraint dr_fk FOREIGN KEY(dealer_id) REFERENCES artist(artist_id),
primary key(artist_id,dealer_id));


create table if not exists buy(
customer_id int,
art_id int,
date date,
g_id int;
price int;
constraint crr_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
constraint gz_fk FOREIGN KEY(g_id) REFERENCES gallery (g_id),
constraint az_fk FOREIGN KEY(art_id) REFERENCES art(art_id),
primary key(customer_id,art_id));


create table if not exists likes(
customer_id int,
artist_id int,
constraint ax_fk FOREIGN KEY(artist_id) REFERENCES artist(artist_id),
constraint cz_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
primary key(customer_id,artist_id));

create table if not exists likes1(
customer_id int,
group_id int,
constraint gy_fk FOREIGN KEY(group_id) REFERENCES group_s(group_id),
constraint cy_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
primary key(customer_id,group_id));


