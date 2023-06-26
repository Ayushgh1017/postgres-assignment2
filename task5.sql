-- task 5

INSERT INTO member
(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) 
values (112,'Becky','G',1,'2023-09-22',103,3,'Female',23434576)


create  or replace view team_fee_view as select t.teamid,t.teamname,count(*) as no_of_team, sum(mt.fee) as membership_fee 
from member m join team t on m.teamid=t.teamid join membertype mt on m.membertypeid=mt.id group by t.teamid;


select * from team_fee_view;

-- select firstname,membertypeid ,teamid from member;
