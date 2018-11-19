

-- insertng necessary data for join queries

-- Insert into airlines values(13, 'kingfisher','KingFs', 'india');
-- Insert into flights (flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');

insert into airlinesdb.airlines values(13, 'kingfisher','KingFs', 'india');

insert into airlinesdb.flights(flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');

-- write an sql query to make the cartesian product between airline and flights 
-- i.e. each airline will appear for all flights and vice versa.

SELECT 
    AIRLINESDB.AIRLINES.AIRLINE,
    AIRLINESDB.FLIGHTS.AIRLINE,
    airlinesdb.flights.DestAirport,
    airlinesdb.flights.SourceAirport,
    airlinesdb.flights.FlightNo
FROM
    AIRLINESDB.AIRLINES
        CROSS JOIN
    AIRLINESDB.FLIGHTS;

-- write an sql query to make report of country, flight no., source airport, destairport  
-- for airlines who are having flights and flights who does not associated with any of airlines.

SELECT 
    AIRLINESDB.AIRLINES.COUNTRY,
    AIRLINESDB.FLIGHTS.FLIGHTNO,
    AIRLINESDB.FLIGHTS.SOURCEAIRPORT,
    AIRLINESDB.FLIGHTS.DESTAIRPORT
FROM
    AIRLINESDB.AIRLINES
        RIGHT JOIN
    AIRLINESDB.FLIGHTS ON AIRLINES.ID = FLIGHTS.AIRLINE;

-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines and airlines who does not associated with any of flights.

SELECT 
    AIRLINESDB.AIRLINES.COUNTRY,
    AIRLINESDB.FLIGHTS.FLIGHTNO,
    AIRLINESDB.FLIGHTS.SOURCEAIRPORT,
    AIRLINESDB.FLIGHTS.DESTAIRPORT
FROM
    AIRLINESDB.FLIGHTS
        RIGHT JOIN
    AIRLINESDB.AIRLINES ON AIRLINES.ID = FLIGHTS.AIRLINE;


-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines or not associated with any airlines and flights 
-- who does not associated with any of airlines also.



SELECT 
    AIRLINESDB.AIRLINES.COUNTRY,
    AIRLINESDB.FLIGHTS.FLIGHTNO,
    AIRLINESDB.FLIGHTS.SOURCEAIRPORT,
    AIRLINESDB.FLIGHTS.DESTAIRPORT
FROM
    AIRLINESDB.FLIGHTS
        LEFT JOIN
    AIRLINESDB.AIRLINES ON AIRLINES.ID = FLIGHTS.AIRLINE
    
    UNION
    
 SELECT 
    AIRLINESDB.AIRLINES.COUNTRY,
    AIRLINESDB.FLIGHTS.FLIGHTNO,
    AIRLINESDB.FLIGHTS.SOURCEAIRPORT,
    AIRLINESDB.FLIGHTS.DESTAIRPORT
FROM
    AIRLINESDB.FLIGHTS
        LEFT JOIN
    AIRLINESDB.AIRLINES ON AIRLINES.ID = FLIGHTS.AIRLINE
       

