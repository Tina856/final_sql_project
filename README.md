# Final SQL Project

## Step 1 – Business Domain

The project analyzes global AI-related job postings.

Each record represents a job posting published by a company in a specific year and geographic location.

The dataset includes country, region, and city information, which enables geography-based analysis of AI adoption, employment trends, and automation risk.


## Step 2 – Identify Entities & Business Tables

Based on the business domain, the dataset can be decomposed into the following core business entities:

 ### Job_Postings 
  ...

 ### Companies
  ...

 ### Time_dim
  ...

 ### Countries
  ...

 ### Cities
  ...

## Step 3 – Database and Schema Setup

A dedicated PostgreSQL database was created to isolate the project from other environments and ensure reproducibility.
Within the database, a separate "analytics" schema is used to store all project tables. The "public" schema is not used.




