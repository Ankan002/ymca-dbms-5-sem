SELECT R.room_no,
    R.type,
    B.guest_no,
    G.name,
    G.city
FROM HOTEL AS H,
    ROOM AS R
    LEFT JOIN BOOKING AS B ON R.room_no = B.room_no
    and B.date_from < CURRENT_DATE
    AND B.date_to > CURRENT_DATE
    LEFT JOIN GUEST AS G ON B.guest_no = G.guest_no
WHERE H.hotel_no = R.hotel_no
    AND H.name = 'Grosvenor';