USE HotelDB;

INSERT INTO Amenity (description) values 
('Microwave'), 
('Jacuzzi'), 
('Refrigerato'), 
('Oven');

INSERT INTO RoomType (description) values ('Single'), ('Double'), ('Suite');

INSERT INTO room (NUMBER, ada_accessible, standard_occupancy, maximun_occupancy, base_price, extra_person, room_typeid) VALUES 
	(201, 'No', 2, 4, 199.99, 10.0, 2),
	(202, 'Yes', 2, 4, 174.99, 10.0, 2),
	(203, 'No', 2, 4, 199.99, 10.0, 2),
	(204, 'Yes', 2, 4, 174.99, 10.0, 2),
	(205, 'No', 2, 2, 174.99, null, 1),
	(206, 'Yes', 2, 2, 149.99, null, 1),
	(207, 'No', 2, 2, 174.99, null, 1),
	(208, 'Yes', 2, 2, 149.99, null, 1),
	(301, 'No', 2, 4, 199.99, 10.0, 2),
	(302, 'Yes', 2, 4, 174.99, 10.0, 2),
	(303, 'No', 2, 4, 199.99, 10.0, 2),
	(304, 'Yes', 2, 4, 174.99, 10.0, 2),
	(305, 'No', 2, 2, 174.99, null, 1),
	(306, 'Yes', 2, 2, 149.99, null, 1),
	(307, 'No', 2, 2, 174.99, null, 1),
	(308, 'Yes', 2, 2, 149.99, null, 1),
	(401, 'Yes', 3, 8, 399.99, 20.0, 3),
	(402, 'Yes', 3, 8, 399.99, 20.0, 3);

INSERT INTO Guest (`name`, address, city, state, zip, phone) VALUES
	('Maryia Malakhava', '9337 Glenburn Lane',	'Charlotte', 'NC', '28278', '(843) 754-3502'),
	('Mack Simmer',	'379 Old Shore Street',	'Council Bluffs', 'IA',	'51501', '(291) 553-0508'),
	('Bettyann Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK',	'99654', '(478) 277-9632'),
	('Duane Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
	('Karie Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
	('Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377) 507-0974'),
	('Zachery Luechtefeld',	'7 Poplar Dr.',	'Arvada', 'CO',	'80003', '(814) 485-2615'),
	('Jeremiah Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279) 491-0960'),
	('Walter Holaway',	'7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '(446) 396-6785'),
	('Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '(834) 727-1001'),
	('Maritza Tilton', '939 Linda Rd.',	'Burke', 'VA',	'22015', '(446) 351-6860'),
	('Joleen Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231) 893-2755');
    
INSERT INTO reservation (NAME, adults, children, start_date, end_date, total_room_cost, roomNo, guestId) VALUES 
	('Mack Simmer', 1, 0, '2023-2-2', '2023-2-4', 299.98, 308, 2),
	('Bettyann Seery', 2, 1, '2023-2-5', '2023-2-10', 999.95, 203, 3),
	('Duane Cullison', 2, 0, '2023-2-22', '2023-2-24', 349.98, 305, 4),
	('Karie Yang', 2, 2, '2023-3-6', '2023-3-7', 199.99, 201, 5),
	('Maryia Malakhava', 1, 1, '2023-3-17', '2023-3-20', 524.97, 307, 1),
	('Aurore Lipton', 3, 0, '2023-3-18', '2023-3-23', 924.95, 302, 6),
	('Zachery Luechtefeld', 2, 2, '2023-3-29', '2023-3-31', 349.98, 202, 7),
	('Jeremiah Pendergrass', 2, 0, '2023-3-31', '2023-4-5', 874.95, 304, 8),
	('Walter Holaway', 1, 0, '2023-4-9', '2023-4-13', 799.96, 301, 9),
	('Wilfred Vise', 1, 1, '2023-4-23', '2023-4-24', 174.99, 207, 10),
	('Maritza Tilton', 2, 4, '2023-5-30', '2023-6-2', 1199.97, 401, 11),
	('Joleen Tison', 2, 0, '2023-6-10', '2023-6-14', 599.96, 206, 12),
	('Joleen Tison', 1, 0, '2023-6-10', '2023-6-14', 599.96, 208, 12),
	('Aurore Lipton', 3, 0, '2023-6-17', '2023-6-18', 184.99, 304, 6),
	('Maryia Malakhava', 2, 0, '2023-6-28', '2023-7-2', 699.96, 205, 1),
	('Walter Holaway', 3, 1, '2023-7-13', '2023-7-14', 184.99, 204, 9),
	('Wilfred Vise', 4, 2, '2023-7-18', '2023-7-21', 1259.97, 401, 10),
	('Bettyann Seery', 2, 1, '2023-7-28', '2023-7-29', 199.99, 303, 3),
	('Bettyann Seery', 1, 0, '2023-8-30', '2023-9-1', 349.98, 305, 3),
	('Mack Simmer', 2, 0, '2023-9-16', '2023-9-17', 149.99, 208, 2),
	('Karie Yang', 2, 2, '2023-9-13', '2023-9-15', 399.98, 203, 5),
	('Duane Cullison', 2, 2, '2023-11-22', '2023-11-25', 1199.97, 401, 4),
	('Mack Simmer', 2, 0, '2023-11-22', '2023-11-25', 449.97, 206, 2),
	('Mack Simmer', 2, 2, '2023-11-22', '2023-11-25', 599.97, 301, 2),
	('Maritza Tilton', 2, 0, '2023-12-24', '2023-12-28', 699.96, 302, 11);


INSERT INTO RoomAmenity (roomNo, amenityID) VALUES
	(201, 1),
	(201, 2),
	(202, 3),
	(203, 1),
	(203, 2),
	(204, 3),
	(205, 1),
	(205, 3),
	(205, 2),
	(206, 1),
	(206, 3),
	(207, 1),
	(207, 3),
	(207, 2),
	(208, 1),
	(208, 3),
	(301, 1),
	(301, 2),
	(302, 3),
	(303, 1),
	(303, 2),
	(304, 3),
	(305, 1),
	(305, 3),
	(305, 2),
	(306, 1),
	(306, 3),
	(307, 1),
	(307, 3),
	(307, 2),
	(308, 1),
	(308, 3),
	(401, 1),
	(401, 3),
	(401, 4),
	(402, 1),
	(402, 3),
	(402, 4);

SELECT * FROM Guest
WHERE `name` = 'Jeremiah Pendergrass';

DELETE FROM Reservation
WHERE guestID = 8;

DELETE FROM Guest
WHERE guestID = 8;