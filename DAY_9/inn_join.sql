-- Insert into rooms values('FNB', 'luxuary', 2,'King', 2, 1300, 'modern');


-- Insert into reservations (Code, checkin, checkout,rate, lastname, firstname, adults, kids)
-- values(14453, '01-Sept-18', '03-Sept-18',15000,'vaid','sarang',1,1);
INSERT INTO INNDB.ROOMS VALUES ('FNB', 'luxuary', 2,'King', 2, 1300, 'modern');
INSERT INTO INNDB.RESERVATIONS (Code, checkin, checkout,rate, lastname, firstname, adults, kids) VALUES (14453, '01-Sept-18', '03-Sept-18',15000,'vaid','sarang',1,1);







-- write an sql query to make the cartesian product between room and reservations 
-- i.e. each room will appear for all reservations and vice versa.

SELECT 
    INNDB.ROOMS.ROOMNAME,
    INNDB.RESERVATIONS.CODE,
    INNDB.RESERVATIONS.FIRSTNAME,
    INNDB.RESERVATIONS.LASTNAME,
    INNDB.RESERVATIONS.ROOM,
    INNDB.RESERVATIONS.CHECKIN,
    INNDB.RESERVATIONS.CHECKOUT,
    INNDB.RESERVATIONS.RATE,
    INNDB.RESERVATIONS.ADULTS,
    INNDB.RESERVATIONS.KIDS
    
FROM
   INNDB.ROOMS
        CROSS JOIN
    INNDB.RESERVATIONS;






-- write an sql query to make report of Room id, check in, check out, lastname, firstname 
-- for room who are having reservations and room who does not associated with any of reservations.

SELECT 
    INNDB.ROOMS.ROOMID,
    INNDB.RESERVATIONS.CHECKIN,
    INNDB.RESERVATIONS.CHECKOUT,
    INNDB.RESERVATIONS.LASTNAME,
    INNDB.RESERVATIONS.FIRSTNAME
FROM
    INNDB.RESERVATIONS
RIGHT JOIN
    INNDB.ROOMS
ON RESERVATIONS.ROOM = ROOMS.ROOMID;





-- write an sql query to make report of Room id, check in, check out, lastname, firstname  
-- for room who are having reservations and room who does not associated with any of reservations.



SELECT 
    INNDB.ROOMS.ROOMID,
    INNDB.RESERVATIONS.CHECKIN,
    INNDB.RESERVATIONS.CHECKOUT,
    INNDB.RESERVATIONS.LASTNAME,
    INNDB.RESERVATIONS.FIRSTNAME
FROM
    INNDB.RESERVATIONS
RIGHT JOIN
    INNDB.ROOMS
ON RESERVATIONS.ROOM = ROOMS.ROOMID;






-- write an sql query to make report of Room id, check in, check out, lastname, firstname 
-- for room who are having reservations or not associated with any reservations and room 
-- who does not associated with any of reservations also.

SELECT 
    INNDB.ROOMS.ROOMID,
    INNDB.RESERVATIONS.CHECKIN,
    INNDB.RESERVATIONS.CHECKOUT,
    INNDB.RESERVATIONS.LASTNAME,
    INNDB.RESERVATIONS.FIRSTNAME
FROM
    INNDB.ROOMS
LEFT JOIN
    INNDB.RESERVATIONS
ON RESERVATIONS.ROOM = ROOMS.ROOMID

UNION

SELECT 
    INNDB.ROOMS.ROOMID,
    INNDB.RESERVATIONS.CHECKIN,
    INNDB.RESERVATIONS.CHECKOUT,
    INNDB.RESERVATIONS.LASTNAME,
    INNDB.RESERVATIONS.FIRSTNAME
FROM
    INNDB.ROOMS
RIGHT JOIN
    INNDB.RESERVATIONS
ON RESERVATIONS.ROOM = ROOMS.ROOMID;

