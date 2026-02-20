CREATE TABLE analytics.fact_jobs AS
SELECT 
    j.job_id,
    j.job_title,
    j.salary_usd,
    j.seniority_level,
    j.employment_type,
    j.geom AS job_location,
    c.company_name,
    c.industry,
    co.country AS country_name,
    co.region AS region_name
FROM analytics.job_postings j
JOIN analytics.companies c ON j.company_id = c.company_id
JOIN analytics.countries co ON j.country_id = co.country_id;