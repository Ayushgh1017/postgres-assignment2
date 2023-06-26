-- task2
INSERT INTO tournament_entry (memberid, tourid, year)
VALUES (103, 2, 2022)
-- select m.memberid,m.firstname,t.year from member m left join tournament_entry t on m.memberid = t.memberid;
select m.firstname as member_name,t.year,count(*) as numbers_of_tours from member m  left join tournament_entry t on m.memberid = t.memberid 
group by m.firstname,t.year;
