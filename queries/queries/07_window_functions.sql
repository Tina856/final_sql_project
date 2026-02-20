SELECT 
    job_title,
    country_name,
    salary_usd,
    RANK() OVER(PARTITION BY country_name ORDER BY salary_usd DESC) AS salary_rank
FROM analytics.fact_jobs;