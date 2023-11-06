INSERT INTO Hotel(name, city)
VALUES
('Mapple', 'London'),
('Ginger', 'Delhi'),
('Grosvenor', 'Washington');

INSERT INTO Guest(name, city)
VALUES
('Harry', 'Sydney'),
('Roman', 'Tokyo'),
('John Wick', 'Gongzhou');

INSERT INTO ROOM(room_no, hotel_no, type, price)
VALUES
(1, '3673e31f-032b-4615-9f07-579307afe33d', 'Single-Room', 3799),
(2, '3673e31f-032b-4615-9f07-579307afe33d', 'Double-Room', 5127),
(3, '23a674a5-9f05-486e-be2f-ed123a933d3d', 'Family-Room', 19233),
(4, 'e1576c0c-29d5-4393-a81a-abbe3ac15cd5', 'Double-Room', 3701);

INSERT INTO BOOKING(hotel_no, guest_no, date_from, date_to, room_no)
VALUES
('23a674a5-9f05-486e-be2f-ed123a933d3d', '50655330-db4b-43f1-954b-b7cbffbc8f5c', '2019-04-11', '2019-04-15', 3),
('3673e31f-032b-4615-9f07-579307afe33d', '4acec283-71ff-4409-9c84-675de44e2ac4', '2019-07-29', '2019-08-07', 2),
('3673e31f-032b-4615-9f07-579307afe33d', '4acec283-71ff-4409-9c84-675de44e2ac4', '2019-08-19', '2019-08-25', 2),
('3673e31f-032b-4615-9f07-579307afe33d', '50655330-db4b-43f1-954b-b7cbffbc8f5c', '2019-11-08', '2019-11-25', 1);
