select * from corona_report;


-- Find the number of corona patients who faced shortness of breath.
SELECT COUNT(*) cnt
FROM corona_report 
WHERE corona = 'positive' AND shortness_of_breath = 'TRUE';

-- Find the number of negative corona patients who have fever and sore throat.
select count(*) cnt from corona_report where 
	corona='negative' 
    and fever='TRUE' 
    and Sore_throat='TRUE';

-- Group the data by month and rank the number of positive cases.
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE corona_report
MODIFY COLUMN Test_date DATETIME;

select Month,PositiveCases ,row_number() over(order by positiveCases desc) Rnk from (SELECT 
        MONTH(Test_date) AS Month,
        COUNT(*) AS PositiveCases
    FROM corona_report
    WHERE corona = 'positive'
    GROUP BY MONTH(Test_date)
    ORDER BY PositiveCases DESC, Month) subquery;

-- Find the female negative corona patients who faced cough and headache.
select * from corona_report where corona='negative' 
	AND LOWER(Cough_symptoms) = 'true'  
    AND LOWER(Headache) = 'true'        
    AND LOWER(sex) = 'female'; 
    
-- How many elderly corona patients have faced breathing problems?
select count(*) cnt from corona_report where 
	Age_60_above='Yes' 
	and lower(Shortness_of_breath)= 'true';
    
-- Which three symptoms were more common among COVID positive patients?
SELECT
    *,
    (Cough_symptoms = 'true') AS Cough_symptom,
    (Fever = 'true') AS Fever_symptom,
    (Sore_throat = 'true') AS Sore_throat_symptom,
    (Shortness_of_breath = 'true') AS Shortness_of_breath_symptom,
    (Headache = 'true') AS Headache_symptom
FROM corona_report
WHERE corona = 'positive';

-- Which symptom was less common among COVID negative people?
SELECT
    'Cough' AS Symptom,
    SUM(Cough_symptoms = 'true') AS Symptom_count
FROM corona_report
WHERE corona = 'negative'
UNION
SELECT
    'Fever' AS Symptom,
    SUM(Fever = 'true') AS Symptom_count
FROM corona_report
WHERE corona = 'negative'
UNION
SELECT
    'Sore_throat' AS Symptom,
    SUM(Sore_throat = 'true') AS Symptom_count
FROM corona_report
WHERE corona = 'negative'
UNION
SELECT
    'Shortness_of_breath' AS Symptom,
    SUM(Shortness_of_breath = 'true') AS Symptom_count
FROM corona_report
WHERE corona = 'negative'
UNION
SELECT
    'Headache' AS Symptom,
    SUM(Headache = 'true') AS Symptom_count
FROM corona_report
WHERE corona = 'negative'
ORDER BY Symptom_count ASC
LIMIT 1;

-- What are the most common symptoms among COVID positive males whose known contact was abroad?
SELECT
    *,
    (Cough_symptoms = 'true') AS Cough_symptom,
    (Fever = 'true') AS Fever_symptom,
    (Sore_throat = 'true') AS Sore_throat_symptom,
    (Shortness_of_breath = 'true') AS Shortness_of_breath_symptom,
    (Headache = 'true') AS Headache_symptom
FROM corona_report
WHERE corona = 'positive'
    AND sex = 'male'
    AND Known_contact = 'Abroad';
