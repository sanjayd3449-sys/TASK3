select * from [dbo].[Course]
select * from [dbo].[Department]
select * from [dbo].[Student]
select * from [dbo].[Faculty]



--1.Use SELECT * and specific columns
select Name  from [dbo].[Faculty]

select Course_Name  from  [dbo].[Course]

--2.Apply WHERE, AND, OR, LIKE, BETWEEN

select * from [dbo].[Student] where Student_ID=1

select * from [dbo].[Student] where Student_ID=4

select * from [dbo].[Student] where Student_ID=3 and Department_ID=4

select * from [dbo].[Student] where Student_ID=4 and Department_ID=1

--OR
select * from [dbo].[Faculty] where Faculty_ID=5 or Department_ID=5
select * from [dbo].[Department] where Department_ID=4 or Department_Name='mba'

--like 
select * from [dbo].[Faculty] where Faculty_ID like 5 or Department_ID like 5
select * from [dbo].[Department] where Department_ID like 4 or Department_Name='mba'


--Between 

select * from  [dbo].[Course]

select * from  [dbo].[Course] where  Course_ID between 1 and 6 


--3.Sort with ORDER BY

select * 
from [dbo].[Department] as DP inner join [dbo].[Faculty] as FC
on DP.Department_ID=FC.Department_ID
inner join [dbo].[Student] ST
on ST.Name=ST.Name
order by Department_Name


select DP.Department_Name,s.Name student_name,
       FC.Name as Faculty_name
	  from [dbo].[Department] as DP inner join [dbo].[Faculty] as FC
on DP.Department_ID=FC.Department_ID
inner join student s on s.Department_ID=dp.Department_ID
order by Department_Name asc


