CREATE TABLE analytics.countries (
    country_id INT PRIMARY KEY,
    country VARCHAR(100),
    region VARCHAR(100)
);


CREATE TABLE analytics.cities (
    city_id INT PRIMARY KEY,
    city VARCHAR(100)
);


CREATE TABLE analytics.companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(200),
    company_size VARCHAR(50),
    industry VARCHAR(100),
    industry_ai_adoption_stage VARCHAR(50)
);


CREATE TABLE analytics.time_dim (
    time_id INT PRIMARY KEY,
    posting_year INT
);


CREATE TABLE analytics.job_postings (
    job_id UUID PRIMARY KEY,
    time_id INT REFERENCES analytics.time_dim(time_id),
    country_id INT REFERENCES analytics.countries(country_id),
    city_id INT REFERENCES analytics.cities(city_id),
    company_id INT REFERENCES analytics.companies(company_id),
    job_title VARCHAR(200),
    seniority_level VARCHAR(50),
    salary_usd INT,
    ai_intensity_score TEXT,
    automation_risk_score TEXT
);