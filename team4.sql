create table room(
roomNumber number,
roomType varchar(20),
guestID number)

create table reservation(
reservationID number,
guestID number,
roomType varchar(20),
roomID number,
checkInDate date,
checkOutDate date)

create table guest(
guestID number,
reservationId number,
firstName varchar(25),
lastName varchar(25),
phoneNumber number,
address varchar(25),
room number)

create table billing(
invoiceNumber number,
guestID number,
billTotal number,
billingDate date)

insert into room values(123,'presidential suite', 1)
insert into room values(100,'execuitive', 2)
insert into room values(101,'poormans suite', 3)

insert into guest values(1,10000012,'donald','trump','420420420420420','420,douchebag land',123)
insert into guest values(2,10000011,'joe','biden','99999999999999','california',100)
insert into guest values(3,10000013,'sai','akhil','1234567890','michgan',101)
insert into billing values(111222,1,100000,to_date('12-12-2012','dd-mm-yyyy'))
insert into billing values(111221,2,1000,to_date('12-12-2019','dd-mm-yyyy'))
insert into billing values(111223,3,10,to_date('12-10-2019','dd-mm-yyyy'))
insert into reservation values(10000012,1,'presidential suite',12,to_date('11-12-2012','dd-mm-yyyy'),to_date('13-12-2012','dd-mm-yyyy'))
insert into reservation values(10000011,1,'execuitive',13,to_date('11-12-2019','dd-mm-yyyy'),to_date('29-12-2019','dd-mm-yyyy'))
insert into reservation values(10000013,1,'poormans suite',14,to_date('01-11-2019','dd-mm-yyyy'),to_date('11-12-2019','dd-mm-yyyy'))

select *from reservation
