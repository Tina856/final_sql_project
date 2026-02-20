Column Name,Data Type,Description,Constraints
job_id,UUID,Unique identifier for each job posting.,PRIMARY KEY
salary_usd,NUMERIC,The annual salary of the position in USD.,NOT NULL
seniority_level,VARCHAR,"Experience level (e.g., Senior, Junior).",-
geom,GEOMETRY,Spatial data (MultiPolygon) of the job's country.,PostGIS