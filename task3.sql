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
