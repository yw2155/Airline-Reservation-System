CREATE TABLE Airport (
    name VARCHAR(20),
    city VARCHAR(20) not null,
    PRIMARY KEY(name)
);

CREATE TABLE Airline (
    name VARCHAR(20),
    PRIMARY KEY(name)
);

CREATE TABLE Airplane (
    ID    VARCHAR(20),
    airline_name VARCHAR(20),
    seats numeric(4,0),
    PRIMARY KEY(ID), 
    FOREIGN KEY(airline_name) references Airline(name)
        on DELETE cascade
);

CREATE TABLE Flight (
    flight_num       VARCHAR(10),
    airline_name     VARCHAR(20),
    departure_time   datetime,
    arrival_time     datetime,
    price            numeric(5,0),
    status           VARCHAR(20),
    airplane_id      VARCHAR(20),
    arrive_airport   VARCHAR(20),
    depart_airport   VARCHAR(20),
    PRIMARY KEY (airline_name,flight_num),
    FOREIGN KEY (airline_name,airplane_id) references Airplane(airline_name, ID),
    FOREIGN KEY (arrive_airport) references Airport(name),
    FOREIGN KEY (depart_airport) references Airport(name)
);

CREATE TABLE Ticket (
    ticket_id	   VARCHAR(20),    
    flight_num     VARCHAR(20),
    airline_name   VARCHAR(20),
    PRIMARY KEY(ticket_id),
    FOREIGN KEY (airline_name, flight_num) references flight(airline_name, flight_num)
);

CREATE TABLE Airline_staff (
	 username	varchar(20),
     password	varchar(20) not null,
     first_name varchar(20) not null,
     last_name    varchar(20) not null,
     date_of_birth date,
     airline_name	varchar(20),
     PRIMARY KEY(username),
     FOREIGN KEY (airline_name) references Airline(name)
	    on delete set null
	);

CREATE TABLE Customer (
	 email		varchar(20),    
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

CREATE TABLE Booking_agent (
	 email		varchar(20),    
     name	    varchar(20),
     password	varchar(20),  
     booking_agent_id      varchar(20),
     PRIMARY KEY(email)
	);

CREATE TABLE Purchases (
    ticket_id    varchar(20),
    book_agent_email   varchar(20),
    customer_email     varchar(20),
    date      date,
    PRIMARY KEY(ticket_id, customer_email),
    foreign key (ticket_id) references Ticket(ticket_id)
		on delete cascade,
    foreign key (book_agent_email) references Booking_agent(email)
		on delete cascade,
    foreign key (customer_email) references Customer(email)
		on delete cascade
    )