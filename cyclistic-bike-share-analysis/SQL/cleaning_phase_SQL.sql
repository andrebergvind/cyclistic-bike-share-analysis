
-- DATA CLEANING & FEATURE ENGINEERING


-- Step 1: Create Cleaned Dataset
-- Purpose: Remove invalid records and prepare data for analysis

-- I created a new cleaned table by filtering out invalid trips detected in the pre cleaning phase, and selecting only relevant fields for analysis. 
-- This ensures that insights are based on accurate and reliable data.

CREATE TABLE `driven-realm-460621-r2.cyclistic_project.cleaned_tripdata` AS
SELECT
  ride_id,
  rideable_type,
  start_station_name,
  end_station_name,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual
FROM `driven-realm-460621-r2.cyclistic_project.full_year_tripdata`
WHERE ended_at > started_at
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 1 AND 1440


-- Result: Removed 131,461 records with invalid or unrealistic durations


Step 2: Feature engineering 
Purpose: From the new and cleaned table i created additional analytical variables including ride month, weekday, start time, end time, and ride duration to facilitate behavioral analysis of rider patterns.


CREATE OR REPLACE TABLE `driven-realm-460621-r2.cyclistic_project.cleaned_tripdata` AS

SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    FORMAT_DATE('%B', DATE(started_at)) AS ride_month,
    FORMAT_DATE('%A', DATE(started_at)) AS ride_weekday,
    FORMAT_TIME('%H:%M:%S', TIME(started_at)) AS start_time,
    FORMAT_TIME('%H:%M:%S', TIME(ended_at)) AS end_time,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS duration_min
FROM `driven-realm-460621-r2.cyclistic_project.cleaned_tripdata`

-- -----------------------------------------------------
JUSTIFICATIONS
-- -----------------------------------------------------

Handling Missing Station Data
-- Purpose: Preserve data integrity while avoiding bias

-- I considered removing records with NULL values in station-related fields (start_station_name, end_station_name). However, a significant portion of electric bike and scooter rides do not include station information.

-- Removing these rows would disproportionately exclude certain ride types and introduce bias into the analysis. Therefore, these records were retained.

-- Instead, NULL station values were handled at the visualisation stage and excluded in Tableau when analysing most popular stations.


-- -----------------------------------------------------

Feature Engineering
-- Purpose: Enhance dataset for analysis and visualisation

-- Additional columns were created to simplify time-based analysis and facilitate a deeper understanding of behavioural patterns among the riders.

