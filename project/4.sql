SELECT * FROM Flight WHERE status = "upcoming";
SELECT * FROM Flight WHERE status = "delayed";
SELECT Customer.name FROM Customer, Purchases WHERE Purchases.book_agent_email is not null;
SELECT * FROM Airplane WHERE airline_name = "China Eastern"