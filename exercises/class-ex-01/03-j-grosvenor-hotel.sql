SELECT R.price AS PRICE, R.type AS TYPE FROM HOTEL AS H, ROOM AS R WHERE H.name='Grosvenor' AND H.hotel_no = R.hotel_no