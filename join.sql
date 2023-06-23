
--- Assignment 2

-- task 1

create  or replace view member_view as 
SELECT m.memberid,m.firstname,m.lastname,c.firstname AS coach,t.teamname,m.joindate,m.membertypeid,m.gender FROM member m
LEFT JOIN member c ON m.coachid = c.memberid  left join team as t on t.manager=m.memberid;

select * from member_view;

-- task2
INSERT INTO tournament_entry (memberid, tourid, year)
VALUES (103, 2, 2022)
-- select m.memberid,m.firstname,t.year from member m left join tournament_entry t on m.memberid = t.memberid;
select m.firstname as member_name,t.year,count(*) as numbers_of_tours from member m  left join tournament_entry t on m.memberid = t.memberid 
group by m.firstname,t.year;


-- task3
-- new entries
INSERT INTO member
(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) 
values (109,'Arihant','Singh',2,'2023-09-12',102,2,'Male',8903735667)
INSERT INTO member
(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) 
values (110,'Brock','Paul',1,'2023-09-22',101,2,'Male',32453657687)
INSERT INTO member
(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) 
values (111,'Seth','Gill',1,'2023-09-22',101,2,'Male',23434576)
select * from member;
select * from tournament_entry;
INSERT INTO tournament_entry (memberid, tourid, year)
VALUES (null, 2, 2022)
INSERT INTO tournament_entry (memberid, tourid, year)
VALUES (null, 1, 2023)

--select * from member m left join tournament_entry t on m.memberid=t.memberid;
-- select * from tournament_entry;


select m.firstname,m.memberid, t.tourid, t.year from member m left join tournament_entry t on m.memberid=t.memberid where t.memberid=null;

-- task 4

create  or replace view tournament_view as 
select tt.memberid,t.tourid,t.name,t.country,tt.year,count(*) as number_of_participants from tournament as t left join tournament_entry as tt on t.tourid=tt.tourid 
group by tt.memberid,tt.year,t.tourid;

select * from tournament_view

-- task 5

INSERT INTO member
(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) 
values (112,'Becky','G',1,'2023-09-22',103,3,'Female',23434576)


create  or replace view team_fee_view as select t.teamid,t.teamname,count(*) as no_of_team, sum(mt.fee) as membership_fee 
from member m join team t on m.teamid=t.teamid join membertype mt on m.membertypeid=mt.id group by t.teamid;


select * from team_fee_view;

-- select firstname,membertypeid ,teamid from member;

-- task 6

INSERT INTO member(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) values (113,'Virat','Kohli',2,'2023-09-12',101,3,'Male',NULL)
INSERT INTO member(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) values (114,'Sachin','Sharma',2,'2023-09-12',101,2,'Male',NULL)


create  or replace view open_view as select t.name, t.country,t.tour_type,tt.year from 
tournament as t  join tournament_entry tt on t.tourid=tt.tourid where t.is_open=true group by t.tour_type,t.country,t.name,tt.year;

select * from open_view;