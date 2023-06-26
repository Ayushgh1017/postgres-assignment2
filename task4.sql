-- task 4

create  or replace view tournament_view as 
select tt.memberid,t.tourid,t.name,t.country,tt.year,count(*) as number_of_participants from tournament as t left join tournament_entry as tt on t.tourid=tt.tourid 
group by tt.memberid,tt.year,t.tourid;

select * from tournament_view
