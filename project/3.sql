INSERT into Airline VALUES ("China Eastern"); 

INSERT into Airport VALUES ("JFK", "NYC"), ("PVG", "Shanghai");

INSERT into Customer VALUES ("12345@qq.com", "QiuB", "12345", "10", "14th", "NYC", "New York", "34275556", "E12345", "2027-01-01", "United State", "1997-01-01"),("67890@qq.com", "QiuA", "67890", "11", "ABC", "Shanghai", "Shanghai", "15000169865", "S45678", "2028-01-01", "China", "1996-12-01");

INSERT into Booking_agent VALUES ("22222@qq.com", "SHNo1", "66666","69696");

INSERT into Airplane VALUES ("13456", "China Eastern", 200), ("78901","China Eastern", 300);

INSERT into Airline_staff VALUES ("therapist123", "55555", "Sweet", "Jesus", "1989-07-11", "China Eastern");

INSERT into Flight VALUES ("MU234", "China Eastern", "2018-10-20 17:00:00", "2018-10-21 14:00:00", 2000, "in-progress", "78901", "JFK", "PVG"),
    ("MU567", "China Eastern", "2018-10-21 17:00:00", "2018-10-22 14:00:00", 3400, "upcoming", "78901", "PVG", "JFK"),
    ("MU734", "China Eastern", "2018-10-19 07:00:00", "2018-10-20 12:30:00", 1900, "delayed", "13456", "JFK", "PVG");

INSERT into Ticket VALUES ("341933", "MU234", "China Eastern"), ("789022", "MU567", "China Eastern");

INSERT into Purchases VALUES ("341933", null, "12345@qq.com", "2018-10-16"),
    ("789022", "22222@qq.com", "67890@qq.com", "2018-10-15")