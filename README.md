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


## Step 8

### Analytical Questions 

Հարց 1․ Աշխատատեղերի բաշխվածությունը ըստ տարածաշրջանների (Regions)
SQL Logic: JOIN analytics.job_postings + analytics.countries.


Հարց 2․ Միջին աշխատավարձի վերլուծություն ըստ երկրների.
SQL Logic: GROUP BY country, AVG(salary_usd).
**Results:**
Վերլուծությունը ցույց տվեց, որ Կանադան և Մեքսիկան ունեն ամենաբարձր միջին աշխատավարձը ($100k+)



Հարց 3. Աշխատատեղերի բաշխվածությունը ըստ ընկերությունների և աշխատանքի տեսակների
**Results:**
Տվյալները ցույց են տալիս, որ բոլոր ընկերություններում ներկայացված են նմանատիպ տեխնոլոգիական և վերլուծական դերեր, սակայն ծավալները տարբեր են։
Future Technologies ունի ամենաշատ AI Researcher դիրքերը (44)։
Future Solutions առանձնանում է Operations Manager դիրքերով (45)։
Future Analytics և Future Systems ընկերություններում բաշխվածությունը համեմատաբար հավասար է տարբեր տեխնիկական դերերի միջև։
ML Engineer, AI Researcher և Operations Manager դերերը ընդհանուր առմամբ ամենահաճախ հանդիպողներն են։
Սա ցույց է տալիս, որ շուկան ուժեղ կենտրոնացած է AI և ինժեներական դերերի վրա։


Հարց 4. Աշխատատեղերի բաշխվածությունը ամսական
**Results:**
Տարիների կտրվածքով աշխատատեղերի քանակը համեմատաբար կայուն է (մոտ 300 տարեկան միջինում)։
Ամենաբարձր ցուցանիշը՝ 2019 թվականին (331)։
Բարձր արժեքներ նաև 2010 և 2025 թվականներին (327)։
Ամենացածրը՝ 2018 թվականին (282)։
Ընդհանուր առմամբ կայուն է՝ առանց կտրուկ անկումների կամ աճի։ Սա ցույց է շուկայի հարաբերական կայունություն։


Հարց 5. Ավտոմատացման ռիսկի միջին մակարդակը ըստ տարածաշրջանների
**Results:**
Տարածաշրջանների միջև տարբերությունները փոքր են, սակայն տեսանելի։
Ամենաբարձր միջին ավտոմատացման ռիսկը՝ South Asia – 0.601
Ամենացածրը՝ North America – 0.572
Տարբերությունը մեծ չէ (~0.03), ինչը նշանակում է, որ ավտոմատացման ռիսկը համեմատաբար գլոբալ երևույթ է և խիստ տարածաշրջանային բևեռացում չկա։


Հարց 6. Ավտոմատացման ռիսկը ըստ seniority մակարդակի
**Results:**
Ամենաբարձր միջին ռիսկը՝ Executive (0.597)
Ամենացածրը՝ Senior (0.567)
Սովորաբար ենթադրում են, որ ցածր մակարդակի աշխատանքներն են ավելի ռիսկային, բայց տվյալները ցույց են տալիս, որ ղեկավարական և միջին մակարդակի դերերում նույնպես կա զգալի ավտոմատացման ռիսկ։
Սա կարող է ցույց տալ, որ ռազմավարական որոշումների որոշ հատվածներ նույնպես տեխնոլոգիական ավտոմատացման ազդեցության տակ են։


Հարց 7. AI ինտենսիվության և աշխատավարձի կապը
**Results:**
Միջին AI ինտենսիվության գնահատականը՝ 0.29
Միջին աշխատավարձը՝ 63,096.18 USD
Սա ցույց է տալիս, որ ընդհանուր առմամբ AI ինտեգրացիան միջին մակարդակի է (մոտ 0.3 սանդղակի վրա), սակայն աշխատավարձը գտնվում է համեմատաբար բարձր միջակայքում։



Եզրակացություն՝ 
Շուկան տեխնոլոգիական է, AI դերերը մեծ ծավալ ունեն, ավտոմատացման ռիսկը տարածված է բոլոր տարածաշրջաններում, իսկ seniority-ի ազդեցությունը միշտ չէ, որ կանխատեսելի է։