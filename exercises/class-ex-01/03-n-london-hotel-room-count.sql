SELECT COUNT(R.room_no) AS number_of_rooms FROM HOTEL AS H, ROOM AS R WHERE H.hotel_no = R.hotel_no AND H.city = 'London';