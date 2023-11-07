SELECT R.room_no, R.type, R.price FROM HOTEL AS H, BOOKING AS B, ROOM AS R WHERE H.hotel_no = B.hotel_no AND R.room_no = B.room_no AND H.name = 'Grosvenor' AND B.date_from < CURRENT_DATE AND (B.date_to > CURRENT_DATE OR B.date_to = NULL);
