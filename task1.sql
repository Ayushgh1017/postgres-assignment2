-- task 1

create  or replace view member_view as 
SELECT m.memberid,m.firstname,m.lastname,c.firstname AS coach,t.teamname,m.joindate,m.membertypeid,m.gender FROM member m
LEFT JOIN member c ON m.coachid = c.memberid  left join team as t on t.manager=m.memberid;

select * from member_view;
