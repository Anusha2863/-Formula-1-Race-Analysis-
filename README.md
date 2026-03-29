 # Formula 1 Race Data Analysis using SQL

## ➤ Project Overview

This project focuses on analyzing Formula 1 race data using SQL to understand driver and team performance. It covers the complete data analytics workflow including data cleaning, transformation, and extracting meaningful insights from structured datasets.

## ➤ Objective

➤ To analyze Formula 1 race data using SQL and identify performance trends  
➤ To perform data cleaning and transformation on real-world datasets  
➤ To generate insights that support data-driven decision making  

## ➤ Dataset Description

The dataset consists of multiple related tables:

➤ Drivers – Contains driver details such as name and nationality  
➤ Races – Includes race year and circuit information  
➤ Results – Contains race outcomes including position, points, and lap data  

Key columns used:

➤ driverId – Unique driver identifier  
➤ raceId – Unique race identifier  
➤ position – Final race position  
➤ points – Points scored  
➤ fastestLapTime – Best lap time  

## ➤ Data Cleaning & Preparation

➤ Handled missing and null values  
➤ Standardized text formats  
➤ Converted date fields into proper format  
➤ Cleaned performance-related columns  

## ➤ SQL Analysis

### ➤ Basic Queries

#### Q1: How many drivers are there in the dataset?

<img width="1070" height="598" alt="Screenshot 2026-03-29 123530" src="https://github.com/user-attachments/assets/af043e51-6341-4246-a9e1-3e961c2ad723" />



Explanation:  
➤ Counts the total number of drivers in the dataset  
➤ Helps understand dataset size  
➤ Uses simple aggregation  

Insight:  
➤ The dataset includes multiple drivers  
➤ Enables performance comparison  
➤ Supports broad analysis  


#### Q2: Which nationalities are present among drivers?

<img width="1067" height="589" alt="Screenshot 2026-03-29 123803" src="https://github.com/user-attachments/assets/37246570-22f5-45e9-a8b1-5266758065ef" />

Explanation:  
➤ Retrieves unique driver nationalities  
➤ Removes duplicate values  
➤ Shows data diversity  

Insight:  
➤ Drivers come from various countries  
➤ Reflects global participation  
➤ Highlights competition diversity  


#### Q3: How many races were conducted in total?

<img width="1057" height="602" alt="Screenshot 2026-03-29 124122" src="https://github.com/user-attachments/assets/8924d34b-32e9-490f-9b64-6c9b2b7c7d0c" />


Explanation:  
➤ Calculates total number of races  
➤ Uses COUNT function  
➤ Measures dataset scope  

Insight:  
➤ Large race dataset available  
➤ Supports trend analysis  
➤ Improves reliability of insights  


### ➤ Intermediate Queries

#### Q4: Who are the top drivers based on total wins?

<img width="1070" height="608" alt="Screenshot 2026-03-29 124327" src="https://github.com/user-attachments/assets/3b2cca3c-29be-494c-8530-d7fdf0ceacbd" />

Explanation:  
➤ Counts wins for each driver  
➤ Groups and sorts data  
➤ Identifies top performers  

Insight:  
➤ Few drivers dominate wins  
➤ Shows competitive gap  
➤ Highlights leading performers  


#### Q5: How many races were held each year?

<img width="1058" height="611" alt="Screenshot 2026-03-29 124451" src="https://github.com/user-attachments/assets/bedf8c16-c84e-4d75-902a-42d0428d6db1" />


Explanation:  
➤ Groups races by year  
➤ Counts races per season  
➤ Shows yearly distribution  

Insight:  
➤ Race count varies yearly  
➤ Reflects schedule changes  
➤ Shows season growth trends  

#### Q6: What is the total points scored by each driver?

<img width="1065" height="604" alt="Screenshot 2026-03-29 124632" src="https://github.com/user-attachments/assets/47c96872-fc5b-49e8-9106-46b1402683d6" />


Explanation:  
➤ Calculates total points per driver  
➤ Uses JOIN between tables  
➤ Aggregates performance data  

Insight:  
➤ High-point drivers are consistent  
➤ Indicates strong performance  
➤ Helps rank drivers  

### ➤ Advanced Analysis

#### Q7: Who are the top 3 drivers each year based on total points?

<img width="1061" height="596" alt="Screenshot 2026-03-29 124854" src="https://github.com/user-attachments/assets/f10b8686-d499-46f8-bb96-3e4714f92e3d" />


Explanation:  
➤ Combines points, positions, and podiums  
➤ Uses advanced aggregations  
➤ Evaluates overall performance  

Insight:  
➤ Consistent drivers perform best  
➤ Lower average position shows strength  
➤ Podium rate reflects competitiveness  

#### Q8: Which drivers show consistent performance(avg position + podiums + points)?

<img width="1066" height="607" alt="Screenshot 2026-03-29 125006" src="https://github.com/user-attachments/assets/b1a05cc3-9a7f-42e3-ba4b-5fd2db1ad33f" />

Explanation:
➤ This analysis evaluates driver performance using multiple metrics such as average position, total points, and podium finishes
➤ It combines aggregated values to measure consistency across races
➤ Helps identify drivers with stable and reliable performance

<img width="1062" height="597" alt="Screenshot 2026-03-29 125449" src="https://github.com/user-attachments/assets/4a2581ad-729a-4f1c-b3dd-69a31d37411f" />

Insight:
➤ Drivers with lower average positions and higher podium counts are the most consistent performers.
➤ High total points indicate sustained performance over multiple races.
➤ Consistency is a key factor in long-term success compared to occasional wins.

## ➤ Insights

➤ Top drivers consistently score high points across races  
➤ Certain teams dominate due to strong strategy  
➤ Consistency is more important than occasional wins  
➤ Performance varies across seasons  
➤ Some drivers perform well despite lower starting positions  

<img width="1068" height="597" alt="Screenshot 2026-03-29 125828" src="https://github.com/user-attachments/assets/2e04ccb2-c4bc-4d48-9c33-69714c7f27b2" />


## ➤ Conclusion

➤ Successfully analyzed Formula 1 race data using SQL  
➤ Identified key performance trends  
➤ Demonstrated complete analytics workflow  
➤ Derived meaningful insights from data  

## ➤ Future Scope

➤ Build dashboards using Power BI or Tableau  
➤ Perform predictive analysis  
➤ Integrate real-time racing data  

## ➤ How to Add Images

➤ Store screenshots inside the images/ folder  
➤ Use clear file names (q1_output.png, etc.)  
➤ Update paths if needed  

## ➤ Author

Anusha  
Data Analytics Enthusiast  


## ➤ Note

This project is part of my continuous learning journey in Data Analytics, focusing on SQL and data analysis skills.
