# Data Dictionary

Schema: analytics

Table: countries
Column Name	Data Type	Description	Constraints
country_id	integer	Unique identifier for each country	Primary Key
country_name	varchar	Name of the country	Not Null
region	varchar	Geographic region of the country	Not Null
Table: cities
Column Name	Data Type	Description	Constraints
city_id	integer	Unique identifier for each city	Primary Key
city_name	varchar	Name of the city	Not Null
country_id	integer	Reference to the country where the city is located	Foreign Key → countries(country_id)
Table: companies
Column Name	Data Type	Description	Constraints
company_id	integer	Unique identifier for each company	Primary Key
company_name	varchar	Name of the company	Not Null
Table: time_dim
Column Name	Data Type	Description	Constraints
time_id	integer	Unique identifier for time record	Primary Key
year	integer	Year of job posting	Not Null
month	integer	Month of job posting (1–12)	Not Null
quarter	integer	Quarter of the year (1–4)	Nullable
Table: job_postings
Column Name	Data Type	Description	Constraints
job_id	integer	Unique identifier for each job posting	Primary Key
time_id	integer	Reference to time dimension	Foreign Key → time_dim(time_id)
country_id	integer	Reference to country	Foreign Key → countries(country_id)
city_id	integer	Reference to city	Foreign Key → cities(city_id)
company_id	integer	Reference to company	Foreign Key → companies(company_id)
job_title	varchar	Title of the job position	Not Null
seniority_level	varchar	Seniority level (Intern, Junior, Mid, Senior, Lead, Executive)	Not Null
salary_usd	numeric	Annual salary in USD	Nullable
ai_intensity_score	numeric	Score indicating level of AI involvement in the role (0–1 scale)	Nullable
automation_risk_score	numeric	Estimated automation risk score (0–1 scale)	Nullable
geom	geometry	Geographic coordinates of job location	Nullable
Notes

All foreign keys enforce referential integrity.

Salary and score columns are stored as numeric for analytical accuracy.

AI intensity and automation risk scores are normalized on a 0–1 scale.

The schema follows a star-like analytical structure centered around job_postings.