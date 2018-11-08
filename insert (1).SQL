

insert into employee(emp_id,emp_name,emp_join_date,g_id)values(700,'Arjun','2007-11-13',1),(701,'venkat','2006-08-11',1),(702,'vamsi','2000-06-23',1),
								(800,'Anvesh','2012-07-04',2),(801,'hemanth','2005-04-11',2),(802,'kishore','2003-09-19',2),
								(900,'Ankith','2008-05-03',3),(901,'Rahul','2006-05-12',3),(902,'manoj','2002-06-14',3),
								(600,'shashank','2014-03-03',4),(601,'Arun','2013-09-12',4),(602,'Gopal','2012-01-01',4);

insert into address_type(addr_id,addr_type)values(1,'Residential'),(2,'Office'),(3,'Delivery');

insert into gallery(g_id,g_name,g_city,g_pin,manager_id)values(1,'Young_blood_art_studio','vijayawada',520001,700),(2,'Byrne','guntur',522007,800),(3,'Dairy Barn','vizag',530016,900),(4,'Redfox','Hyderabad',500001,600);

							      
insert into zip(zipcode,city,state)values(522007,'Guntur','Andhra Pradesh'),(530016,'vizag','Andhra Pradesh'),(520001,'vijayawada','Andhra Pradesh'),(500001,'hyderabad','Telangana');

insert into emp_addr(emp_id,addr_id,street,zipcode)values(700,1,'Gandhinagar street',522007),(700,2,'red cross street',522007),(600,1,'churchil',530016),(601,2,'Srinagar',530016),(800,1,'gardens street',500001),(800,2,'shopping street',520001);

insert into artist(artist_id,artist_name,place_of_birth,style_of_art)values(11,'sateesh','guntur','Abstract_expression'),(12,'saikrishna','vijayawada','Conceptual art'),(13,'srinu','hyderabad','Proto-Cubism'),(14,'Bhargav','vizag','Constructivism');

insert into art(art_id,unique_title,year_it_was_made,type_of_art,artist_id)values(111,'glory',2001,'painting',11),(112,'sacrifice',2000,'photograph',12),(113,'respect',1990,'lithograph',13),(114,'dominance',1999,'painting',14),(115,'Happiness',2009,'painting',14),
insert into art(art_id,unique_title,year_it_was_made,type_of_art,artist_id)values(116,'The Persistence of Memory',2000,'painting',12),(117,'Drowning Girl',2010,'painting',11);

insert into group_s(group_id,group_name)values(1111,'potrait'),(1112,'still_files'),(1113,'works_by_picasso');

insert into offer(offer_id,offer_name,offer_date)values(11122,'skill exhibition','2012-10-01'),(11133,'photo exhibtion','2013-11-01');

insert into customer(customer_id,customer_name)values(100,'sekhar'),(200,'ashok'),(300,'pavan'),(301,'Akhil'),(302,'Sriman'),(303,'Bharath'),(304,'Sriteja'),(305,'varun'),(306,'venkatesh');

insert into cus_addr(customer_id,addr_id,street,zipcode)values(100,1,'Gandhinagar street',522007),(200,2,'red cross street',522007),(300,1,'churchil',530016),(301,2,'Srinagar',530016),(302,1,'gardens street',500001),(303,2,'shopping street',520001);


insert into maintains(g_id,art_id)values(1,111),(1,112),(2,113),(3,114),(4,115),(1,116),(2,117);
insert into maintains(g_id,art_id)values(1,116),(2,117);
insert into classified(art_id,group_id)values(111,1111),(112,1112),(113,1111),(114,1113),(115,1112);

insert into place(g_id,offer_id)values(1,11122),(2,11122),(3,11133);

insert into contains(g_id,customer_id)values(1,100),(2,200),(1,200),(2,100),(3,300),(4,100),(2,301),(3,302),(4,303);

insert into dealer(artist_id,dealer_id)values(11,11),(12,11),(13,13),(14,13);

insert into buy(customer_id,art_id,date,price,g_id)values(100,111,'2011-06-01',10000,1), 
(300,114,'2014-04-16',100000,3),(301,113,'1998-10-01',100055,2),(303,115,'2000-01-02',200000,4);
(100,116,'2000-02-04',100000,1),(301,117,'2002-04-03',150000,2);


insert into buy(customer_id,art_id,price)values(100,111,100000);
insert into likes(customer_id,artist_id)values(100,11),(100,12),(300,13),(300,14),(301,12),(303,14);

insert into likes1(customer_id,group_id)values(100,1111),(200,1112),(300,1111),(301,1113),(302,1112),(303,1111);