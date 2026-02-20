-- Step 8

-- Հարց 1
-- Այս հարցումը ցույց կտա, թե որտեղ են կենտրոնացված հնարավորությունները:
SELECT 
    c.region, 
    COUNT(j.job_id) AS total_jobs
FROM analytics.job_postings j
JOIN analytics.countries c ON j.country_id = c.country_id
GROUP BY c.region
ORDER BY total_jobs DESC;


-- Հարց 2
-- Թոփ 5 երկրները՝ ամենաբարձր միջին աշխատավարձով
SELECT 
    c.country, 
    ROUND(AVG(j.salary_usd), 2) AS avg_salary
FROM analytics.job_postings j
JOIN analytics.countries c ON j.country_id = c.country_id
GROUP BY c.country
ORDER BY avg_salary DESC
LIMIT 5;