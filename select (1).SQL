////Query to list customer at each gallery///


1.select g.g_id,c.customer_id
from gallery g inner join customer c inner join contains m on m.customer_id=c.customer_id and m.g_id=g.g_id
order by g_id asc;

///////Query to list residential address details of all the employees////////////////


2.select m.emp_id,e.street,z.city,z.state
from emp_addr e inner join address_type a inner join employee m inner join zip z on z.zipcode=e.zipcode and e.emp_id=m.emp_id and e.addr_id=a.addr_id
order by emp_id asc;


////////////////////Query to list the customer buyed arts////////////////



3.select customer_id,g_id,sum(price) as "total money spent by customer in gallery"
from buy 
group by g_id;


/////////Query to list the names of the artists and titles of arts of customer owned arts////////////

4.select c.customer_id,a.artist_id,a.unique_title
from buy b inner join customer c inner join art a inner join artist a1
on c.customer_id=b.customer_id and b.art_id=a.art_id and a.artist_id=a1.artist_id; 

///////Query to list the manager name and manager_id of each gallery////// 

5.select emp_id as "manager_id",emp_name as "manager_name",g.g_id,emp_join_date
from employee e inner join gallery g on e.g_id=g.g_id
group by g_id;

//////////Query to list the number of arts belongs to of each group and their names/////////

6.select g.group_name,count(g.group_id) as "number of arts for each group"
from classified c inner join art a inner join group_s g on c.art_id=a.art_id and g.group_id=c.group_id
group by g.group_id;

////////////////Query to list the details employees works for Dairy Barn gallery/////////////////

7.select e.emp_id,e.emp_name,g.g_id
from employee e inner join gallery g on e.g_id=g.g_id
where g_name='Dairy Barn';


////////////////Query to list style of arts of all artists///////////

8.select style_of_art,artist_id,artist_name
from artist 

//////////////////Query to list the arts belongs to each gallery//////

9.select g.g_id as "gallery_id" ,a.art_id 
from maintains m inner join gallery g inner join art a on m.g_id=g.g_id and m.art_id=a.art_id
order by g.g_id asc;

/////////////Query to list the customer names of Young_blood_art_studio////////////

10.select c.customer_id,c2.customer_name
from contains c inner join customer c2 inner join gallery g on c.customer_id=c2.customer_id and g.g_id=c.g_id
where g_name="Young_blood_art_studio";



