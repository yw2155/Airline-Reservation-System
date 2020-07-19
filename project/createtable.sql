create table airport
	(name		varchar(20),
	 city		varchar(20),
     PRIMARY KEY(name)
	);
    
create table airline
	(name		varchar(20),
     PRIMARY KEY(name)
	);
    
    
create table airplane
	(id		varchar(20),
     airline_name	varchar(20),
     seat    numeric(4,0),
     PRIMARY KEY(id, airline_name),
     foreign key (airline_name) references airline(name)
		on delete cascade 
	);
    
    
create table airline_staff
	(username	varchar(20),
     password	varchar(20) not null,
     first_name varchar(20) not null,
     last_name    varchar(20) not null,
     date_of_birth date,
     airline_name	varchar(20),
     PRIMARY KEY(username),
     foreign key (airline_name) references airline(name)
		on delete set null
	);    


create table flight
	( airline_name	varchar(20),
     flight_num		varchar(20),
     arrival_time	time,
     departure_time	time,
     price           int,
     status         varchar(20),
     airplane_id      varchar(20),
     arrive_airport   varchar(20),
     depart_airport   varchar(20),
     PRIMARY KEY(airline_name,flight_num),
     foreign key (airline_name,airplane_id) references airplane(airline_name,id),
     foreign key (arrive_airport) references airport(name),
     foreign key (depart_airport) references airport(name)
	); 

create table customer
	(email		varchar(20),    
     name	    varchar(20),
     password	varchar(20),  
     building_number      varchar(20),
     street       varchar(20),
     city      varchar(20),
     state   varchar(20),
     phone_number   varchar(20),
     passport_number varchar(20),
     passport_expiration  date,
     passport_country   varchar(20),
     date_of_birth   date,
     PRIMARY KEY(email)
	);

create table book_agent
	(email		varchar(20),    
     name	    varchar(20),
     password	varchar(20),  
     booking_agent_id      varchar(20),
     PRIMARY KEY(email)
	);

create table ticket
	(ticket_id		varchar(20),    
     flight_num	    varchar(20),
     airline_name   varchar(20),
     PRIMARY KEY(ticket_id),
     foreign key (airline_name, flight_num) references flight(airline_name, flight_num)
		
	); 

create table purchases
    ( ticket_id    varchar(20),
    book_agent_email   varchar(20),
    customer_email     varchar(20),
    date      date,
    PRIMARY KEY(ticket_id, book_agent_email, customer_email),
    foreign key (ticket_id) references ticket(ticket_id)
		on delete cascade,
    foreign key (book_agent_email) references book_agent(email)
		on delete cascade,
    foreign key (customer_email) references customer(email)
		on delete cascade
    ) 



