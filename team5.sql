create table room(
roomNumber number primary key,
roomType varchar(20) not null,
guestID number foreign key references guest(guestID)

create table reservation(
reservationID number primary key,
guestID number foreign key references guest(guestID)
roomType varchar(20),
roomID number foreign key references room(roomID),
checkInDate date not null,
checkOutDate date not null)

create table guest(
guestID number primary key,
reservationId number foreign key references reservation(reservationID)
firstName varchar(25) not null,
lastName varchar(25),
phoneNumber number not null,
address varchar(25) not null,
room number not null)

create table billing(
invoiceNumber number primary key,
guestID number foreign key references guest(guestID)
billTotal number not null,
billingDate date not null)
