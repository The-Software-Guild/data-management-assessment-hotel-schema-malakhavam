DROP DATABASE IF EXISTS HotelDB;
CREATE DATABASE HotelDB;

USE HotelDB;

CREATE TABLE Guest (
    guestID INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip VARCHAR(50) NOT NULL,
    phone VARCHAR(25) NOT NULL
);

CREATE TABLE Amenity (
	amenityID INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE RoomType (
	room_typeID INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE Room (
	number INT PRIMARY KEY,
    ada_accessible VARCHAR(5) NOT NULL,
    standard_occupancy INT NOT NULL,
    maximun_occupancy INT NOT NULL,
    base_price DOUBLE NOT NULL,
    extra_person DOUBLE,
    room_typeID INT NOT NULL
);

CREATE TABLE Reservation (
    reservationID INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    adults INT NOT NULL,
    children INT NOT NULL,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    total_room_cost DOUBLE NOT NULL,
    roomNo INT NOT NULL,
    guestID INT NOT NULL
    
);

CREATE TABLE RoomAmenity (
	roomNo INT NOT NULL,
    amenityID INT NOT NULL
  
);

ALTER TABLE RoomAmenity ADD CONSTRAINT RoomAmenity_room_fk FOREIGN KEY (roomNo) REFERENCES room (NUMBER);
ALTER TABLE RoomAmenity ADD CONSTRAINT RoomAmenity_amenity_fk FOREIGN KEY (amenityID) REFERENCES amenity (amenityID);

ALTER TABLE Reservation ADD CONSTRAINT Reservation_room_fk FOREIGN KEY (roomNo) REFERENCES room (number);
ALTER TABLE Reservation ADD CONSTRAINT Reservation_guest_fk FOREIGN KEY (guestId) REFERENCES guest (guestID) ON DELETE cascade;