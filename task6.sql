-- task 6

INSERT INTO member(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) values (113,'Virat','Kohli',2,'2023-09-12',101,3,'Male',NULL)
INSERT INTO member(memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone) values (114,'Sachin','Sharma',2,'2023-09-12',101,2,'Male',NULL)


create  or replace view open_view as select t.name, t.country,t.tour_type,tt.year from 
tournament as t  join tournament_entry tt on t.tourid=tt.tourid where t.is_open=true group by t.tour_type,t.country,t.name,tt.year;

select * from open_view;
