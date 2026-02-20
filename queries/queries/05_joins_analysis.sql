-- 1. Տեսնել յուրաքանչյուր ընկերության աշխատատեղերի քանակը և երկիրը
SELECT 
    c.company_name, 
    co.country, 
    COUNT(j.job_id) AS jobs_count
FROM analytics.job_postings j
JOIN analytics.companies c ON j.company_id = c.company_id
JOIN analytics.countries co ON j.country_id = co.country_id
GROUP BY c.company_name, co.country
ORDER BY jobs_count DESC;

-- 2. Գտնել բոլոր Senior դերերը իրենց արդյունաբերության (industry) հետ միասին
SELECT 
    j.job_title, 
    c.industry, 
    j.salary_usd
FROM analytics.job_postings j
JOIN analytics.companies c ON j.company_id = c.company_id
WHERE j.seniority_level = 'Senior'
ORDER BY j.salary_usd DESC;