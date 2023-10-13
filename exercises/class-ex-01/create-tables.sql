CREATE TYPE room_type AS ENUM('Single-Room', 'Double-Room', 'Family-Room');
CREATE TABLE Hotel (
    hotel_no VARCHAR(36) PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL,
    city VARCHAR(40) NOT NULL
);
CREATE TABLE Guest (
    guest_no VARCHAR(36) PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(60) NOT NULL,
    city VARCHAR(40) NOT NULL
);
CREATE TABLE Room (
    room_no NUMERIC(6) NOT NULL UNIQUE,
    hotel_no VARCHAR(36) REFERENCES Hotel(hotel_no),
    type room_type NOT NULL,
    price NUMERIC(6) NOT NULL,
    primary key(room_no, hotel_no)
);
CREATE TABLE Booking (
    hotel_no VARCHAR(36) REFERENCES Hotel(hotel_no),
    guest_no VARCHAR(36) REFERENCES Guest(guest_no),
    date_from DATE NOT NULL,
    date_to DATE NOT NULL CHECK(date_from <= date_to),
    room_no NUMERIC(6) REFERENCES Room(room_no),
    primary key(hotel_no, guest_no, date_from)
);