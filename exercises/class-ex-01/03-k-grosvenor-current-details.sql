SELECT R.room_no,
    R.type,
    G.name,
    G.city,
    G.guest_no
FROM HOTEL AS H
    JOIN ROOM AS R ON H.hotel_no = R.hotel_no
    LEFT JOIN Booking AS B ON H.hotel_no = B.hotel_no
    AND B.date_from < CURRENT_DATE
    AND B.date_to > CURRENT_DATE
    RIGHT JOIN GUEST AS G ON B.guest_no = G.guest_no
WHERE H.name = 'Grosvenor';