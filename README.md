# Airline-Reservation-System
A Databases course final project. Implementing SQL, Python and HTML to create an airline ticket reservation system. 
## General features: 
Register, login, logout, search for flights' public information (price, # of seats available, flight status (on-time/delayed/etc.)) using departure/arrival time, airport name
## User-specific features: 
Three types of users:
### Customers: 
1. View my flights: Provide various ways for the user to see flights information which he/she purchased.  
2. Purchase tickets: Customer chooses a flight and purchase ticket for this flight. 
3. Search for flights: Search for upcoming flights based on source city/airport name, destination city/airport name, date.
4.Track My Spending: Default view is total amount of money spent in the past year and a bar chart showing month-wise money spent for last 6 months. He/she can also specify a range of dates to view total amount of money spent within that range and a bar chart showing month-wise money spent within that range.
### Booking Agent: 
1. View my flights: Provide various ways for the booking agents to see flights information for which he/she purchased on behalf of customers. 
2. Purchase tickets: Booking agent chooses a flight and purchases tickets for other customers giving customer information. 
3. Search for flights: Search for upcoming flights based on source city/airport name, destination city/airport name, date.
4. View my commission: Default view is the total amount of commission received in the past 30 days and the average commission he/she received per ticket booked in the past 30 days and total number of tickets sold by him/her in the past 30 days. He/she can also specify a range of dates to view total amount of commission received and total numbers of tickets sold.
5. View Top Customers: See top 5 customers based on number of tickets bought from the booking agent in the past 6 months and top 5 customers based on amount of commission received in the last year. Show him/her a bar chart with each of these 5 customers in x-axis and number of tickets bought in y-axis. Show another bar chart with each of these 5 customers in x-axis and amount commission received in y-axis.
### Airline Staff: 
1. View My flights: Showing all the upcoming flights operated by the airline he/she works for the next 30 days. He/she can see all the current/future/past flights operated by the airline he/she works for based range of dates, source/destination airports/city etc. He/she can also see all the customers of a particular flight.
2. Create new flights: He or she can create a new flight, providing all the needed data, via forms. Unauthorized users (non-staff) are forbidden from this feature. Defaults will be showing all the upcoming flights operated by the airline he/she works for the next 30 days.
3. Change Status of flights: He or she can change a flight status (from upcoming to in progress, in progress to delayed etc) via forms.
4. Add airplane in the system: He/she can add a new airplane, providing all the needed data, via forms. In the confirmation page, she/he will be able to see all the airplanes owned by the airline he/she works for.
5. Add new airport in the system: He or she can add a new airport, providing all the needed data, via forms. 
6. View all the booking agents: Top 5 booking agents based on number of tickets sales for the past month and past year. Top 5 booking agents based on the amount of commission received for the last year.
7. View frequent customers: Airline Staff will also be able to see the most frequent customer within the last year. In addition, Airline Staff will be able to see a list of all flights a particular Customer has taken only on that particular airline.
8. View reports: Total amounts of ticket sold based on range of dates/last year/last month etc. Month wise tickets sold in a bar chart.
9. Comparison of Revenue earned: Draw a pie chart for showing total amount of revenue earned from direct sales (when customer bought tickets without using a booking agent) and total amount of revenue earned from indirect sales (when customer bought tickets using booking agents) in the last month and last year.
10. View Top destinations: Find the top 3 most popular destinations for last 3 months and last year.
