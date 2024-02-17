use project;
select * from credit_card_without_nan;

-- Group the customers based on their income type and find the average of their annual income.
select Type_income,round(avg(Annual_income),4) AVG_Income from credit_card_without_nan group by 1 order by 2 desc;

-- Find the female owners of cars and property.
select Ind_ID,GENDER,Car_Owner,Propert_Owner from credit_card_without_nan where GENDER ='F' and Car_Owner='Y' and Propert_Owner='Y';

-- Find the male customers who are staying with their families.
select Ind_ID,GENDER,Marital_status,Family_Members from credit_card_without_nan where GENDER='M' and Family_Members>1 ;

-- Please list the top five people having the highest income.
select Ind_ID,Annual_income from (select Ind_ID,dense_rank() over(order by Annual_income desc) rnk,Annual_income from credit_card_without_nan) a where rnk<=5;

-- How many married people are having bad credit?
-- we are counting all the people who are married before getting separted
select  count(Ind_ID) from credit_card_without_nan a inner join credit_card_label b using (Ind_ID) where label=0 and Marital_status like '%Married%';
-- we are counting people who married 
select  count(Ind_ID) from credit_card_without_nan a inner join credit_card_label b using (Ind_ID) where label=0 and Marital_status like 'Married';

-- What is the highest education level and what is the total count?
select Education,count(EDUCATION) total from credit_card_without_nan group by 1 order by 2 desc;

-- Between married males and females, who is having more bad credit? 
with cte as(select  GENDER from credit_card_without_nan a inner join credit_card_label b using (Ind_ID) where label=0 and Marital_status like 'Married' )
select count( case when gender='M'then 1 else null end ) Male, count(case when gender='F' then 1 else null end) Female from cte ;
