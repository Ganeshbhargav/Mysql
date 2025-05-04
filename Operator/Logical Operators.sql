select * from employee where name ='bhargav' or name='ganesh'; -- logical or
select * from employee where name ='bhargav' or name='ganesh'or name='john' or name='virat'; -- logical or
select * from employee where salary='65000' and id=101; -- logical and (returns empty set because one of the condition  is false)
select * from employee where salary='65000' and id=102; -- logical and
select * from employee where name!='bhargav'; 
select * from employee where not(name='bhargav'); -- logical not 
