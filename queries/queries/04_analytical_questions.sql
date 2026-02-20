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


-- Հարց 3
SELECT 
    c.company_name,
    j.job_title,
    COUNT(*) AS job_count
FROM 
    analytics.job_postings j
JOIN 
    analytics.companies c ON j.company_id = c.company_id
GROUP BY 
    c.company_name, j.job_title
ORDER BY 
    c.company_name, j.job_title;

	-- Հարց 4 
	SELECT 
    t.posting_year,
   COUNT(*) AS job_count
FROM 
    analytics.job_postings j
JOIN 
    analytics.time_dim t ON j.time_id = t.time_id
GROUP BY 
    t.posting_year
ORDER BY 
    t.posting_year;



-- Հարց 5
SELECT 
    co.region,
    ROUND(AVG(j.automation_risk_score), 3) AS avg_automation_risk
FROM 
    analytics.job_postings j
JOIN 
    analytics.countries co
        ON j.country_id = co.country_id
GROUP BY 
    co.region
ORDER BY 
    avg_automation_risk DESC;


	-- Հարց 6
	SELECT 
    j.seniority_level,
    AVG(j.automation_risk_score) AS avg_automation_risk
FROM 
    analytics.job_postings j
GROUP BY 
    j.seniority_level
ORDER BY 
    avg_automation_risk DESC;



	-- Հարց 7
	SELECT  
    ROUND(AVG(ai_intensity_score), 2) AS avg_ai_score,  
    ROUND(AVG(salary_usd), 2) AS avg_salary  
FROM  
    analytics.job_postings;